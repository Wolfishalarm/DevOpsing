#!/bin/bash
declare -i number1
declare -i number2
declare -i total
echo "What’s your favorite number? "
		read number1
echo "What’s your most hated number? "
		read number2
total=$number1*$number2
		echo "Aha! They equal "$total "what we did here was taking $number1 and adding $number2 to it"
exit 0

