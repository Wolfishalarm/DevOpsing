#!/bin/bash
for i in {0..10..2}
	do
	  echo "We've been through this $i times already!"
done

#for will take the value of the variable i through a loop, starting at 0 and counting up to 10 in increments of 2. at each step of the loop we will echo "We've been through $i times, printnig the current value of i. when executing the script you will see the print of "this 0, 2, 4, 6 ,8 ,10 times".
