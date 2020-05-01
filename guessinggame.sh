#!usr/bin/env bash

# USER GUESS CONTROL FUNCTION
function check_guess {

local user_guess=$1 #local so we could modify the user_guess in the main program witouth risching to check a wrong argument guess

	if [[ $user_guess -eq $nFile_Directory ]] #succsesfull case! ,user guess the number
	then 
		echo "Congratulation! you've guessed" #congrats the user
		let is_a_guess=true #change our control variable to 'true" so the condition of the loop will know the user has already guessed
	elif [[ $user_guess -lt $nFile_Directory ]] #guess to low case!
	then 
		echo "low guess, retry"
	else  #last and only one left case...guess to high!
		echo "high guess, retry"
	fi
}

# SUPPORT VARIABLE DECLARATION

is_a_guess=false #Control variable ,if == 'false" user has to retry... otherwise ,true, he guessed we can terminate the program
nFile_Directory="$(find -maxdepth 1 -type f | wc -l)" #will store count number of files (just files as requested) in the current cd

#PROGRAM ALGORITHM...
while [[ "$is_a_guess" = false ]] #loop ,check if the user has already guessed the number of files ,if not re-do the loop
do
	read -p "How many files are in the current directory... " user_guess #every iteration ,new guess from the user
	check_guess $user_guess #providing the new user guess to the control function 
done

