 #!/usr/bin/python3

# This python script curates gifs of cute animals from reddit and displays them
# in a constant rotation.
#
# How should gifs be selected?
# Generally when I go looking for cute gifs, I trawl the hot section of a certain
# subreddit.  how about this?  Every t (nominally an hour), the first 100 posts
# from "hot" on each subreddit are collected.  Each gif with over x upvotes that
# is not already in rotation is added to a list.  The y top gifs are added to
# rotation, and the oldest y gifs are taken out of rotation.
#
# What does it mean to "put a gif in rotation"?
# All gifs will be stored in a folder with a name consisting of their md5 hash
# with a pre-pended "serial number" so that the gifs can be indexed as through
# they are a circular buffer.  When a new gif is added, a file containing metadata
# is also created.  Gifs stored in this fashion will be displayed sequentially on
# the screen.
#
# What if the user really likes a gif?
# We should provide a button that will alter the metadata.  The only issue is
# that this will interrupt the operation of the circular buffer.  We will cross
# this bridge when we come to it.
#
# What about subreddits that are great, but don't post new gifs often?
# idk.
#
# requires praw and pygame
# pip install --user praw
# pip install --user pygame
#
# sudo apt install python-imaging

# also need gifsicleX

import praw
import urllib
import math
import os
import urllib
import pickle
import threading
import subprocess
import traceback

################################################################
###                      parameters                          ###
################################################################
#subreddits = ['aww', 'Awwducational', 'AnimalsBeingBros', 'babyelephantgifs', 'corgi', 'CorgiGifs', 'raccoongifs']
#subreddits = ['aww', 'AnimalsBeingBros', 'babyelephantgifs', 'corgi', 'CorgiGifs', 'raccoongifs']

subreddits = ['aww', 'AnimalsBeingBros', 'babyelephantgifs']

#mean_words = ['kill', 'killing', 'die', 'dead', 'death', 'mortality', 'worst']

trawl_size = 10
seconds_between_trawls = 60 * 60

reddit = praw.Reddit(client_id='p7QMzeqyCCyeUw',
                     client_secret='hkagKzQIJTV2w_4Ab5cJwKyytCU',
                     user_agent='ubuntu:cute-gif-box:v0')

directory = "/home/johnmamish/Documents/bits/box_of_cute/gifdir"
total_gifs = 100
max_size = 40000000

################################################################
###                      "typedefs"                          ###
################################################################
class gif_metadata:
    def __init__(self):
        self.submission = None


################################################################
###                      functions                           ###
################################################################
def get_score(submission):
    return submission.score

def get_indexed_filename(directory, i):
    result = ""
    for f in os.listdir(directory):
        #check to make sure that it's a file and it's a gif
        if(os.path.isfile(os.path.join(directory, f)) and (f.rsplit(".", 1)[-1] == "gif")):
            if(int(f[0:4]) == i):
                if(result == ""):
                    result = f.rsplit(".", 1)[0]
                else:
                    print("[ERROR] - file with index %i exists twice"%i)
    return os.path.join(directory, result)

def is_it_an_imgur_gif(submission):
    o = urllib.parse.urlparse(submission.url)
    try:
        host = o.netloc.split(".", 1)[-1].split(".", 1)[0]
        ext = o.path.split(".", 1)[-1]
        if((host == "imgur") and ((ext == "gif") or (ext == "gifv"))):
            return True
    except:
        return False

def get_top_gifs(subreddits):
    candidates = []

    for subreddit in subreddits:
        i = 0
        print("Trawling %s\r\n-----------------------"%subreddit)
        for submission in reddit.subreddit(subreddit).hot(limit=100):
            i = i + 1
            if(is_it_an_imgur_gif(submission)):
                s = submission.title
                while((len(s) + math.log(i, 10)) < 50):
                    s += ' '
                #print("%i: %s gif, %i upvotes."%(i, s, submission.score))
                candidates.append(submission);

    return candidates

def get_gif_size(url):
    if(url.rsplit(".", 1)[1] == "gifv"):
        url = url[:-1]
    f = urllib.request.urlopen(url)
    meta = f.info()
    content_length = f.getheader("Content-length")
    return int(content_length)

def cull_existing(d, candidates):
    #get a list of all gifs currently in the folder
    extant = [f for f in os.listdir(d) if (os.path.isfile(os.path.join(d, f)) and (f.rsplit(".", 1))[-1] == "gif")]
    extant_hashes = []
    for e in extant:
        extant_hashes.append(e.rsplit(".", 1)[0].split("-", 1)[1])

    new_ones = []
    for c in candidates:
        imgur_hash_c = urllib.parse.urlparse(c.url).path
        imgur_hash_c = imgur_hash_c.rsplit(".", 1)[0].rsplit("/", 1)[1]
        already_there = False
        for e in extant_hashes:
            if(imgur_hash_c == e):
                already_there = True
                break
        if(not already_there):
            new_ones.append(c)

    return new_ones

def cull_too_big(maxsize, candidates, maxresults):
    new_ones = []
    for c in candidates:
        try:
            s = get_gif_size(c.url)
            print("url: %s, title: \"%s\", size:%i"%(c.url.ljust(40), c.title.ljust(70), s))
            if(get_gif_size(c.url) <= maxsize):
                new_ones.append(c)
            if(len(new_ones) > maxresults):
                break
        except:
            pass
    return new_ones

#make sure to set cb_head = return value of this function
def get_new(d, subreddits, cb_head, number):
    #find candidates, sort, reject existing, and ones that are too big
    candidates = get_top_gifs(subreddits)
    candidates = sorted(candidates, key=get_score, reverse=True)
    candidates = cull_existing(d, candidates);
    candidates = cull_too_big(50000000, candidates, number)

    #download all of the specified files into directory d and construct and
    #serialize metadata
    for c in candidates:
        gif_url = c.url
        if(gif_url.rsplit(".", 1)[1] == "gifv"):
            gif_url = gif_url[:-1]
        if(gif_url.rsplit(".", 1)[1] != "gif"):
            print("url %s, title %s not a gif"%(gif_url, c.title))
            continue

        gif_name = gif_url.rsplit("/", 1)[1]
        gif_name = os.path.join(d, str(cb_head).zfill(4) + "-" + gif_name)
        print("downloading url %s, title \"%s\" to %s"%(gif_url, c.title, gif_name))
        try:
            oldname = get_indexed_filename(d, cb_head)
            urllib.request.urlretrieve(gif_url, gif_name)
            #subprocess.call("gifsicle --loopcount=1 --batch " + gif_name)

            #if we successfully got a new file, we should delete the old gif in
            #"slot" number cb_head and increment cb_head
            try:
                if(oldname != ""):
                    print("deleting gif %s"%oldname)
                    os.remove(oldname + ".gif")
                    os.remove(oldname + ".pickle")
            except FileNotFoundError:
                pass

            #make a new pickle file
            met = gif_metadata()
            met.submission = c
            pickle.dump(met, open(gif_name.rsplit(".", 1)[0] + ".pickle", "wb"))
            cb_head = cb_head + 1

        except IOError:
            print("failed to get gif url %s, title %s"%(gif_url, c.title))
            traceback.print_exc()

    return cb_head

################################################################
###                      main                                ###
################################################################

if __name__ == "__main__":
    cb_head = 10
    get_new(directory, subreddits, cb_head, 10)
