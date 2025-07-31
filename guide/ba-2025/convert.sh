#!/bin/bash

# Colors 
light_gray=`tput setaf 7`
light_red=`tput setaf 9`
light_green=`tput setaf 10`

echo "${light_gray}Setting things up"

############ Hoedown ############

echo "${light_gray}- Setup hoedown"
which markdown > /dev/null
if [ $? != 0 ]; then
	echo "${light_red}✗ Hoedown is missing"
	echo "${light_gray}Attempting to install Hoedown"

	brew install markdown
	if [[ $? != 0 ]]; then
		echo "${light_red}✗ Could not install Hoedown"
		exit 1
	fi

	echo "${light_green}✓ Hoedown installed"
fi

echo "${light_green}✓ Hoedown available"

############ Markdown ############

echo "${light_gray}Converting markdown to html"

for i in ./*.md;
	do 
		base=${i%.*};
		echo "$(cat header.txt)" > $base.html;
		hoedown --tables --quote $i >> $base.html;
		echo "$(cat footer.txt)" >> $base.html;
	done;

echo "${light_green}✓ Done converting markdown to html"