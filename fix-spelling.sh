#!/bin/bash -u

mkdir -p tmp; 
for f in *.html; do 
	cat "$f" \
	| sed -e 's|practioner|practitioner|g' \
	> tmp/"`basename $f`"; 
done

mv tmp/* .
rmdir tmp
