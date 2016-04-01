#!/bin/bash -u

mkdir -p tmp
for f in *.html; do
	g=tmp/"$f";
	grep -B1000 Footer "$f" | sed '$d' > "$g";
	cat footer.htm >> "$g";
	mv "$g" "$f";
done
rmdir tmp
