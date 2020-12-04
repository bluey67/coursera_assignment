function check_answer {
    # checks the user's guess against the correct answer
    if [[ $1 -eq $2 ]]
    then
        echo 0
    elif [[ $1 < $2 ]]
    then
        echo 1
    else
        echo 2
    fi 
}

correct_answer=$(ls -l | wc -l | bc)
success=1

while [[ $success != 0 ]]
do
    echo "Guess how many files are in the current directory? Type a value and press Enter"
    read response
    state=$(check_answer $correct_answer $response)
    if [[ $state -eq 0 ]]
    then
        echo "Correct! Congratulations"
        let success=0
    elif [[ $state -eq 1 ]]
    then
        echo "Too high, try again!"
    else
        echo "Too low, try again!"
    fi
done
