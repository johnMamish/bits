# This one-liner recursively renames the last occurances of all strings in the
# directory tree.  For instance, consider
#
# | foo.txt
# | bar.txt
# | foo
# |------foo.txt
#
# it can change all of the foo's here to baz, including the folder named foo and
# its contents.

find . -name "" -printf "%d %p\n"|sort -rn|perl -pe 's/^\d+\s//;' | xargs rename 's/<original string>(?!.*<original string>)/<target string>/' {} ";"

#replace all text occurances of "rqt"
find . -type f -exec sed -i s/rqt/jrqt/g {} +

#replace filenames
find . -name "rqt*" -printf "%d %p\n"|sort -rn|perl -pe 's/^\d+\s//;' | xargs rename 's/rqt(?!.*rqt)/jrqt/' {} ";"
