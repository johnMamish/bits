#!/usr/bin/env python

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

import praw
import urlparse
import math
import os
import urllib2
import urllib


################################################################
###                      parameters                          ###
################################################################
#subreddits = ['aww', 'Awwducational', 'AnimalsBeingBros', 'babyelephantgifs', 'corgi', 'CorgiGifs', 'raccoongifs']
subreddits = ['aww', 'AnimalsBeingBros', 'babyelephantgifs', 'corgi', 'CorgiGifs', 'raccoongifs']

#mean_words = ['kill', 'killing', 'die', 'dead', 'death', 'mortality', 'worst']

trawl_size = 10
seconds_between_trawls = 60 * 60


reddit = praw.Reddit(client_id='p7QMzeqyCCyeUw',
                     client_secret='hkagKzQIJTV2w_4Ab5cJwKyytCU',
                     user_agent='ubuntu:cute-gif-box:v0')

def get_score(submission):
    return submission.score

def is_it_an_imgur_gif(submission):
    o = urlparse.urlparse(submission.url)
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
    f = urllib.urlopen(url)
    meta = f.info()
    content_length = meta.getheaders("Content-Length")[0]
    return int(content_length)

def cull_existing(d, candidates):
    #get a list of all gifs currently in the folder
    extant = [f for f in os.listdir(d) if (os.path.isfile(os.path.join(d, f)) and (f.rsplit(".", 1))[-1] == "gif")]
    extant_hashes = []
    for e in extant:
        extant_hashes.append(e.rsplit(".", 1)[0])

    new_ones = []
    for c in candidates:
        imgur_hash_c = urlparse.urlparse(c.url).path
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
        if(get_gif_size(c.url) <= maxsize):
            new_ones.append(c)
        if(len(new_ones) > maxresults):
            break
    return new_ones

def get_new(d, subreddits):
    #find candidates, sort, reject existing, and ones that are too big
    candidates = get_top_gifs(subreddits)
    candidates = sorted(candidates, key=get_score, reverse=True)
    candidates = cull_existing(d, candidates);
    candidates = cull_too_big(50000000, candidates, 20)
    for c in candidates:
        s = c.title
        print("%s - url = %s,  %i upvotes, %s bytes"%(s, c.url, c.score, get_gif_size(c.url)))

    #xxx todo get file size before download


if __name__ == "__main__":
    get_new(".", subreddits)
