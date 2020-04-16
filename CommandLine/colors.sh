#!/bin/bash
echo "What's your favorite color? "
read text1
echo "What's your best frien'ds favorite color? "
read text2
	if test $text1 != $text2; then
		echo "I guess opposites attract."
	else
		echo "You two do think alike!"
	fi
exit 0

#this will ask for two user inputs, we don't need to declare our 2 variable because they are not used as numbers, but plain text character strings. We'll use test to check if the value if text1 doesn't equal to text2. like that we will echo to different options using the else(if they are not equal).you close the if with fi which is if backwards.

