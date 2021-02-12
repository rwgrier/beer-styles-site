#!/bin/bash

for i in ./*.md;
	do 
		base=${i%.*};
		echo "$(cat header.txt)" > $base.html;
		perl markdown.pl --html4tags $i >> $base.html;
		echo "$(cat footer.txt)" >> $base.html;
	done;
