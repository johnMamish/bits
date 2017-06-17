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

def scale(original, constraint):
    if((original[0] <= constraint[0]) and
       (original[1] <= constraint[1])):
        return original

    dx = original[0] - constraint[0]
    dy = original[1] - constraint[1]
    if(dx > dy):
        scalefactor = float(constraint[0]) / float(original[0])
    else:
        scalefactor = float(constraint[1]) / float(original[1])

    return (float(original[0]) * scalefactor, float(original[1]) * scalefactor)

class cssden(QMainWindow):
    def __init__(self):
        super(cssden, self).__init__()


        self.mwidget = QMainWindow(self)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint)

        self.setFixedSize(800, 480)
        self.center()

        #gif
        im = Image.open("test2.gif")
        tsize = scale(im.size, (800, 480))
        print("size = %u, %u, scaled = %u, %u"%(im.size[0], im.size[1], tsize[0], tsize[1]))

        self.moviee = QLabel(self)
        self.movie = QtGui.QMovie("test2.gif")
        qs = QSize()
        qs.setHeight(tsize[1])
        qs.setWidth(tsize[0])
        self.movie.setScaledSize(qs)
        self.moviee.setMovie(self.movie)
        self.moviee.setGeometry((800 - (tsize[0])) / 2.0, (480 - tsize[1]) / 2.0, tsize[0], tsize[1])
        self.movie.start()
        self.movie.finished.connect(self.handle_gif_over)
        self.show()

    def handle_gif_over(self):
        t = random.randint(0, 1)
        f = ""
        if(t == 0):
            f = "test1.gif"
        else:
            f = "test2.gif"

        im = Image.open(f)
        size = im.size
        tsize = scale(im.size, (800, 480))
        print("size = %u, %u, scaled = %u, %u"%(im.size[0], im.size[1], tsize[0], tsize[1]))
        self.movie = QtGui.QMovie(f)
        self.moviee.setMovie(self.movie)     # I added
        self.moviee.setGeometry((800 - (tsize[0])) / 2.0, (480 - tsize[1]) / 2.0, tsize[0], tsize[1])
        self.movie.finished.connect(self.handle_gif_over)
        qs = QSize()
        qs.setHeight(tsize[1])
        qs.setWidth(tsize[0])
        self.movie.setScaledSize(qs)

        self.movie.start()                   # those lines

    #center of the screen
    def center(self):
        qr = self.frameGeometry()
        cp = QDesktopWidget().availableGeometry().center()
        qr.moveCenter(cp)
        self.move(qr.topLeft())

app = QApplication(sys.argv)
app.setStyleSheet("QMainWindow{background-color: rgb(30,30,30);border: 1px solid black}")

ex = cssden()
sys.exit(app.exec_())
