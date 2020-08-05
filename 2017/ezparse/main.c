/**
 * Parser exercise to warm me up for the C compiler.
 *
 * This program evaluates arithmetical expressions that use the following chars
 *     + - * / ( ) [0, 9]
 *
 * All arithmetic is integer.  The point of this exercise is not quite to make
 * a useful program, so we naively ignore integer wraparound.
 *
 * TODO: figure out how to make some random operation (say, subtraction) left-
 * associative.
 *
 * expr:
 *     term {+ term}
 *     term {- term}
 *
 * term:
 *     factor {* factor}
 *     factor {/ factor}
 *
 * factor:
 *     NUM
 *     '(' expr ')'
 *
 * FIRST(expr) = {ID, '('}
 * FOLLOW(expr) = {')', EOF, '+', '-', '*', '/'}
 */

#include <stdio.h>
#include <stdlib.h>

////////////////////////////////////////////////////////////////
//    typedefs
////////////////////////////////////////////////////////////////
typedef enum toktype
{
    PLUS, MINUS, MUL, DIV, OPEN_PAREN, CLOSE_PAREN, NUM, EOF_TOK, TOKTYPE_E_END
} toktype_e;

typedef struct tok
{
    toktype_e t;
    int val;      //only used by NUM tokens.
} tok_t;

typedef struct tree
{
    toktype_e optok;
    union
    {
        struct tree* kids[2];
        int val;
    } u;
} tree_t;


////////////////////////////////////////////////////////////////
//    function prototypes
////////////////////////////////////////////////////////////////
int build_tree(tok_t** toks, tree_t** t);
int tok(char* s, tok_t** toks);
void print_tree(tree_t* t, int);
int eval_tree(tree_t* t);

char chartok[] = {'+', '-', '*', '/', '(', ')', 'n', 'x'};

int main(int argc, char** argv)
{
    if(argc != 2)
    {
        printf("We expect exactly 1 argument!\n");
        printf("just type a mathematical expression using +, -, *, /, (, ), and numbers\n");
        return -1;
    }

    tok_t* toks;
    tok(argv[1], &toks);
    for(int i = 0; toks[i].t != EOF_TOK; i++)
    {
        switch(toks[i].t)
        {
            case PLUS:
                printf("\'+\'");
                break;

            case MINUS:
                printf("\'-\'");
                break;

            case MUL:
                printf("\'*\'");
                break;

            case DIV:
                printf("\'/\'");
                break;

            case OPEN_PAREN:
                printf("\'(\'");
                break;

            case CLOSE_PAREN:
                printf("\')\'");
                break;

            case NUM:
                printf("%i", toks[i].val);
        }
        printf("\n");
    }

    //build a tree and print it out.
    tree_t* t;
    int err = build_tree(&toks, &t);

    printf("\n\n");
    //print_tree(t, 0);

    int result = eval_tree(t);

    if(err)
    {
        printf("error %i during parsing\n", err);
    }
    else
    {
        printf("%i\n", result);
    }

    return 0;
}

/**
 * Builds an abstract syntax tree from a list of tokens that is terminated by an
 * EOF token.
 *
 * NUM + ((NUM + NUM) * NUM)
 *
 * sum, prod, expr
 *
 */
static int sum(tok_t** toks, tree_t** t);
static int prod(tok_t** toks, tree_t** t);
static int expr(tok_t** toks, tree_t** t);

int build_tree(tok_t** toks, tree_t** t)
{
    int ret = sum(toks, t);

    //we expect an EOF at this point
    if((*toks)->t != EOF_TOK)
    {
        return -1;
    }

    return ret;
}

static int sum(tok_t** toks, tree_t** t)
{
    tree_t* left;
    tree_t* right;
    tree_t* center = malloc(sizeof(tree_t));

    int ret;
    if((ret = prod(toks, &left)) != 0)
    {
        return ret;
    }
    center->u.kids[0] = left;

    while(((*toks)->t == PLUS) || ((*toks)->t == MINUS))
    {
        //fill out information for the center node
        center->optok = (*toks)->t;
        (*toks)++;

        //generate tree for the right side.
        if((ret = prod(toks, &right)) != 0)
        {
            return ret;
        }
        center->u.kids[1] = right;

        //switcheroo
        left = center;
        center = malloc(sizeof(tree_t));
        center->u.kids[0] = left;
    }
    *t = left;
    free(center);
    return 0;
}

static int prod(tok_t** toks, tree_t** t)
{
    tree_t* left;
    tree_t* right;
    tree_t* center = malloc(sizeof(tree_t));

    int ret;
    if((ret = expr(toks, &left)) != 0)
    {
        return ret;
    }
    center->u.kids[0] = left;

    while(((*toks)->t == MUL) || ((*toks)->t == DIV))
    {
        //fill out information for the center node
        center->optok = (*toks)->t;
        (*toks)++;

        //generate tree for the right side.
        if((ret = expr(toks, &right)) != 0)
        {
            return ret;
        }
        center->u.kids[1] = right;

        //switcheroo
        left = center;
        center = malloc(sizeof(tree_t));
        center->u.kids[0] = left;
    }
    *t = left;
    free(center);
    return 0;
}

int eval_tree(tree_t* t)
{
    if(t->optok == NUM)
    {
        return t->u.val;
    }
    else
    {
        int lval = eval_tree(t->u.kids[0]);
        int rval = eval_tree(t->u.kids[1]);
        int ret = 0;
        switch(t->optok)
        {
            case PLUS:
                ret = lval + rval;
                break;
            case MINUS:
                ret = lval - rval;
                break;
            case MUL:
                ret = lval * rval;
                break;
            case DIV:
                ret = lval / rval;
                break;
            default:
                ret = 0;
                break;
        }
        return ret;
    }
}

static int expr(tok_t** toks, tree_t** t)
{
    if((*toks)->t == OPEN_PAREN)
    {
        //parse the contents of the parentheses.
        ((*toks))++;
        sum(toks, t);

        //we should have a close-parenth once we are done parsing everything
        //inside the parenths.
        if((*toks)->t != CLOSE_PAREN)
        {
            return -1;
        }
        (*toks)++;
    }
    else if((*toks)->t == NUM)
    {
        //construct a new node which only contains this number
        *t = malloc(sizeof(tree_t));
        (*t)->u.val = (*toks)->val;
        (*t)->optok = NUM;
        (*toks)++;
    }
    else
    {
        return -1;
    }

    return 0;
}

int tree_max_depth(tree_t* t)
{
    if(t->optok == NUM)
    {
        return 1;
    }
    else
    {
        int ldepth = tree_max_depth(t->u.kids[0]);
        int rdepth = tree_max_depth(t->u.kids[1]);
        return (ldepth > rdepth) ? (ldepth + 1) : (rdepth + 1);
    }
}

/**
 *123a
 *1b123c
 *d1e1f1g
 *
 * note: 0 is the topmost level.
 *
 * indent at start = 2^(depth - (level + 1)) - 1
 *                   2^(3 - (0 + 1)) - 1 = 3
 * indent in middle = 2^(depth - level) - 1
 *
 *   a
 * b   c
 *d e f g
 *
 *
 *
 *       a
 *   b       c
 * d   e   f   g
 *h i j k l m n o
 */
void print_tree(tree_t* t, int level)
{
    //start by indenting the shit.
    if(level >= tree_max_depth(t))
    {
        return;
    }
    int depth = tree_max_depth(t);
    int start_indent = (1 << (depth - (level + 1))) - 1;
    int inner_indent = (1 << (depth - level)) - 1;

    int i;
    for(i = 0; i < start_indent; i++)
    {
        putchar(' ');
    }

    //print all of the nodes.
    //lol shitty.
    for(int i = 0; i < (1 << level); i++)
    {
        //find the node in quesiton
        tree_t* bach = t;
        int rach = i;
        int mask = (1 << (level - 1));
        for(int j = 0; (j < level); j++)
        {
            if(bach->optok == NUM)
            {
                bach = 0;
                break;
            }

            //duct tape lol
            if(mask & rach)
            {
                bach = bach->u.kids[1];
            }
            else
            {
                bach = bach->u.kids[0];
            }
            mask >>= 1;
        }
        if(bach)
        {
            putchar(chartok[bach->optok]);
        }
        else
        {
            putchar(' ');
        }
        for(int i = 0; i < inner_indent; i++)
        {
            putchar(' ');
        }
    }

    putchar('\n');
    print_tree(t, level + 1);
}

toktype_e lutok(char c)
{
    //could be done with an array, but I'm lazy
    switch(c)
    {
        case '+':
            return PLUS;
        case '-':
            return MINUS;
        case '*':
            return MUL;
        case '/':
            return DIV;
        case '(':
            return OPEN_PAREN;
        case ')':
            return CLOSE_PAREN;
    }
}

int tok(char* s, tok_t** toks)
{
    //allocate space for list of tokens
    int tok_cap = 4;
    int ntoks = 0;
    *toks = malloc(sizeof(tok_t) * tok_cap);
    int doit = 1;

    while(doit)
    {
        switch(*s)
        {
            case ' ':
            {
                s++;
                break;
            }

            case '+': case '-': case '*': case '/': case '(': case ')':
            {
                (*toks)[ntoks].t = lutok(*s);
                (*toks)[ntoks].val = 0;
                s++;
                break;
            }

            case '0': case '1': case '2': case '3': case '4': case '5':
            case '6': case '7': case '8': case '9':
            {
                //eat new chars until we get a full number
                int n = 0;
                while((*s >= '0') && (*s <= '9'))
                {
                    n *= 10;
                    n += *s - '0';

                    s++;
                }

                (*toks)[ntoks].t = NUM;
                (*toks)[ntoks].val = n;
                break;
            }

            case '\0':
            {
                doit = 0;
                (*toks)[ntoks].t = EOF_TOK;
                (*toks)[ntoks].val = 0;
                s++;
                break;
            }

            default:
            {
                printf("[tok]    illegal char %c\n", *s);
                return -1;
            }
        }

        ntoks++;

        //resize the array of tokens if we have to
        if(ntoks >= tok_cap)
        {
            tok_cap *= 2;
            *toks = realloc(*toks, sizeof(tok_t) * tok_cap);
        }
    }

    return 0;
}

int parse(tok_t* s, int* res)
{

}
