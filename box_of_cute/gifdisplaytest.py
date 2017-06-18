#!/usr/bin/python3

from PyQt5.QtWidgets import (QMessageBox,QApplication, QWidget, QToolTip, QPushButton,
                             QDesktopWidget, QMainWindow, QAction, qApp, QToolBar, QVBoxLayout,
                             QComboBox,QLabel,QLineEdit,QGridLayout,QMenuBar,QMenu,QStatusBar,
                             QTextEdit,QDialog,QFrame,QProgressBar
)
from PyQt5 import QtCore, QtWidgets, QtGui
from PyQt5.QtGui import QIcon,QFont,QPixmap,QPalette
from PyQt5.QtCore import *
import PyQt5.QtWidgets,PyQt5.QtCore

import time,random,subprocess,sys,json

from PIL import Image
import os
import box_of_cute
import datetime

def scale(original, constraint):
    scalefactor = 1
    dx = original[0] - constraint[0]
    dy = original[1] - constraint[1]

    if((dx > 0) or (dy > 0)):
        if(dx > dy):
            scalefactor = float(constraint[0]) / float(original[0])
        else:
            scalefactor = float(constraint[1]) / float(original[1])

    elif((dx < -100) or (dy < -70)):
        if(dx > dy):
            scalefactor = float(constraint[0] - 100) / float(original[0])
        else:
            scalefactor = float(constraint[1] - 70) / float(original[1])

    else:
        scalefactor = 1

    return (float(original[0]) * scalefactor, float(original[1]) * scalefactor)

def grab_random_gif(d):
    extant = [f for f in os.listdir(d) if (os.path.isfile(os.path.join(d, f)) and (f.rsplit(".", 1))[-1] == "gif")]
    t = random.randint(0, len(extant) - 1)
    return os.path.join(d, extant[t])

class cssden(QMainWindow):
    def __init__(self):
        super(cssden, self).__init__()


        self.mwidget = QMainWindow(self)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint)

        self.setFixedSize(800, 480)
        self.center()

        #gif
        g = grab_random_gif(box_of_cute.directory)
        im = Image.open(g)
        tsize = scale(im.size, (800, 480))
        print("size = %u, %u, scaled = %u, %u"%(im.size[0], im.size[1], tsize[0], tsize[1]))

        self.moviee = QLabel(self)
        self.movie = QtGui.QMovie(g)
        qs = QSize()
        qs.setHeight(tsize[1])
        qs.setWidth(tsize[0])
        self.movie.setScaledSize(qs)
        self.moviee.setMovie(self.movie)
        self.moviee.setGeometry((800 - (tsize[0])) / 2.0, (480 - tsize[1]) / 2.0, tsize[0], tsize[1])
        self.movie.start()
        self.movie.finished.connect(self.handle_gif_over)
        self.show()
        self.lasttime = datetime.datetime.now()
        self.i = 0

    def handle_gif_over(self):
        self.i = self.i + 1
        if(self.i > 10):
            box_of_cute.get_new(box_of_cute.directory, box_of_cute.subreddits, 0, box_of_cute.total_gifs)
            self.i = 0
        #        if(self.time_to_reload_gifs()):
        #    box_of_cute.get_new(box_of_cute.directory, box_of_cute.subreddits, 0, box_of_cute.total_gifs)
        #    self.lasttime = datetime.datetime.now()

        f = grab_random_gif(box_of_cute.directory)
        im = Image.open(f)
        size = im.size
        tsize = scale(im.size, (800, 480))
        self.movie = QtGui.QMovie(f)
        self.moviee.setMovie(self.movie)     # I added
        self.moviee.setGeometry((800 - (tsize[0])) / 2.0, (480 - tsize[1]) / 2.0, tsize[0], tsize[1])
        self.movie.finished.connect(self.handle_gif_over)
        qs = QSize()
        qs.setHeight(tsize[1])
        qs.setWidth(tsize[0])
        self.movie.setScaledSize(qs)
        print("size = %u, %u, scaled = %u, %u, loops = %i"%(im.size[0], im.size[1], tsize[0], tsize[1], self.movie.loopCount()))
        self.movie.start()                   # those lines

    #center of the screen
    def center(self):
        qr = self.frameGeometry()
        cp = QDesktopWidget().availableGeometry().center()
        qr.moveCenter(cp)
        self.move(qr.topLeft())

    def time_to_reload_gifs(self):
        dtnow = datetime.datetime.now()
        tomorrow = self.lasttime + datetime.timedelta(days=1)
        return ((dtnow.year == tomorrow.year) and
                (dtnow.month == tomorrow.month) and
                (dtnow.day == tomorrow.day) and (dtnow.hour > 3))

app = QApplication(sys.argv)
app.setStyleSheet("QMainWindow{background-color: rgb(30,30,30);border: 1px solid black}")

ex = cssden()
sys.exit(app.exec_())
