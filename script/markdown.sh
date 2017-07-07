#!/bin/sh

# transform to markdown
find . -name "*.html" | parallel pandoc -t markdown --atx-headers -i {} -o {.}.md
# replace backslash linebreaks by double space
for i in `find -name "*.md"`; do sed -i 's/\\/ /g' $i; done
