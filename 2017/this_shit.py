import numpy as np
import math
import copy

rect1 = [[0.0, 0.0], [0.0, 65.75], [126.24, 65.75], [126.24, 0.0]]
rect2 = [[0.0, 0.0], [0.0, 49.0], [58.0, 49.0], [58.0, 0.0]]

target_dists = [(37.35 + 41.76) / 2.0, (38.37 + 42.83) / 2.0, (28.78 + 33.22) / 2.0, (27.3 + 31.91) / 2.0]
d = [0.0, 0.0]

dstart = [30.0, 0.0]
dend = [40.0, 10.0]

def dist(p1, p2):
    return math.sqrt(sum(((x - y)**2) for x, y in zip(p1, p2)))

def calc_error(r1, r2p, target, d):
    # alter r2
    r2 = copy.deepcopy(r2p)
    for p in r2:
        p[0] = p[0] + d[0]
        p[1] = p[1] + d[1]

    #calculate errors
    #print "calc error"
    accum = 0.0
    for p1, p2, td in zip(r1, r2, target):
        accum += (td - dist(p1, p2)) ** 2
        #print dist(p1, p2)
    return math.sqrt(accum)

min_error = 1400.0
dbest = [0.0, 0.0]
for d[0] in np.arange(dstart[0], dend[0], (dend[0] - dstart[0]) / 2000.0):
    for d[1] in np.arange(dstart[1], dend[1], (dend[1] - dstart[1]) / 2000.0):
        e = calc_error(rect1, rect2, target_dists, d)
        #print rect2
        if(e < min_error):
            min_error = e
            dbest = copy.deepcopy(d)
    print d[0]

print min_error
print dbest
