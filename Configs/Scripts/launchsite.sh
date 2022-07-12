#!/bin/sh

for f in $(find ~/docs/www/src -name '*.md')
do
    node ~/docs/www/parse.js ${f::-3}
done

brave file:///home/gge/docs/www/src/index.html
