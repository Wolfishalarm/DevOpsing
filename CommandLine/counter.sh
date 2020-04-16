#!/bin/bash
declare -i counter
counter=10
	while [ $counter -gt 2 ]; do
		echo The counter is $counter
		counter=counter-1
	done
exit 0

#We create a variable called "counter" and assign it the value of 10. Then we reduce the value of counter by 1 each time through the loop, echoing the current value of counter. once the state is the brackets is not true, the script will stop beause the while is not true.
