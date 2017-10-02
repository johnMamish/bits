#!/bin/bash

echo "doing git clone"
git clone git@github.com:ros-visualization/qt_gui_core.git
git clone git@github.com:ros-visualization/rqt.git

cd rqt
echo "renaming files and folders in rqt"
find . -name "rqt*" -printf "%d %p\n"|sort -rn|perl -pe 's/^\d+\s//;' | xargs rename 's/rqt(?!.*rqt)/jrqt/' {} ";"

echo "replacing all occurances of the word rqt with jrqt"
find . -type f -exec sed -i s/rqt/jrqt/g {} +

echo "replacing qt_gui with jqt_gui"
find . -type f -exec sed -i s/\(?<!r\)qt_gui/jqt_gui/g {} +

cd ../qt_gui_core
echo "renaming files and folders in qt_gui_core"
find . -name "qt_gui*" -printf "%d %p\n"|sort -rn|perl -pe 's/^\d+\s//;' | xargs rename 's/qt_gui(?!.*qt_gui)/jqt_gui/' {} ";"

echo "replacing qt_gui -> jqt_gui and rqt -> jrqt"
find . -type f -exec sed -i s/rqt/jrqt/g {} +
find . -type f -exec sed -i s/\(?<!r\)qt_gui/jqt_gui/g {} +
cd ..
