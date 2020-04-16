#!/bin/bash
echo "What's tomorrow's weather going to be like?"
read weather
	case $weather in
		sunny | warm ) echo "Nice! I love it when it's "$weather
		;;
		cloudy | cool ) echo "Not bad..." $weather" is ok, too"
		;;
		rainy | cold ) echo "FUCK!" $weather" weather is damnn shitty"
		;;
		* ) echo "Sorry, I'm not familiar with that weather system."
		;;
	esac
exit 0

#This is a script with more than yes/no chouse, we can use the "case". 

#the * is catching like "else" if nothing was chosen exactly like in the options.
