#!/bin/bash

# Colors 
light_gray=`tput setaf 7`
light_red=`tput setaf 9`
light_green=`tput setaf 10`

echo "${light_gray}Setting things up"

############ Markdown ############

echo "${light_gray}- Setup markdown"
which markdown > /dev/null
if [ $? != 0 ]; then
	echo "${light_red}✗ Markdown is missing"
	echo "${light_gray}Attempting to install Markdown"

	brew install markdown
	if [[ $? != 0 ]]; then
		echo "${light_red}✗ Could not install Markdown"
		exit 1
	fi

	echo "${light_green}✓ Markdown installed"
fi

echo "${light_green}✓ Markdown available"

############ Markdown ############

echo "${light_gray}Converting markdown to html"

for i in ./*.md;
	do 
		base=${i%.*};
		echo "$(cat header.txt)" > $base.html;
		markdown --html4tags $i >> $base.html;
		echo "$(cat footer.txt)" >> $base.html;
	done;

echo "${light_green}✓ Done converting markdown to html"