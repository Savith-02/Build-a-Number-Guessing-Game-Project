#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"
RANDOM_NUMBER=$(( $RANDOM % 1000 )) 

echo $RANDOM_NUMBER

echo Enter your username:
read USERNAME

# Check if username is not empty
if [[ -z $USERNAME ]] 
then
  echo Empty username
  exit
else
  USERNAME_RESULT=$($PSQL "SELECT * FROM users WHERE name='$USERNAME'")
  # Check if user is already in databse
  if [[ -z $USERNAME_RESULT ]]
  then
    # INSERT_NEW_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
    echo Welcome, $USERNAME! It looks like this is your first time here.
    FIRST_TIME=true
  else
    FIRST_TIME=false
    COUNT=$($PSQL "SELECT count(*) FROM users INNER JOIN games USING(user_id) WHERE name='$USERNAME'" | sed -r 's/^ *| *$//g')
    MIN_TRIES=$($PSQL "SELECT MIN(no_of_tries) FROM users INNER JOIN games USING(user_id) WHERE name='$USERNAME'" | sed -r 's/^ *| *$//g')    
    echo "Welcome back, $USERNAME! You have played $COUNT games, and your best game took $MIN_TRIES guesses."
  fi
fi

NUMBER_OF_TRIES=0

GUESS_FUNCTION() {
  (( NUMBER_OF_TRIES+=1 ))

  if [[ $1 = start ]]; then
    echo Guess the secret number between 1 and 1000:
    read GUESS
  elif [[ $1 = higher ]]; then
    echo "It's lower than that, guess again:"
    read GUESS
  elif [[ $1 = lower ]]; then
    echo "It's higher than that, guess again:"
    read GUESS
  else
    echo coming here
    read GUESS
  fi
    
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo That is not an integer, guess again:
    GUESS_FUNCTION 
  elif [[ $GUESS > $RANDOM_NUMBER ]]; then
    GUESS_FUNCTION higher
  elif [[ $GUESS < $RANDOM_NUMBER ]]; then
    GUESS_FUNCTION lower
  elif [[ $GUESS = $RANDOM_NUMBER ]]; then
    echo "You guessed it in $NUMBER_OF_TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
    if [[ $FIRST_TIME = true ]]; then
      INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME') ")
    fi
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
    INSERT_GAME_INFO=$($PSQL "INSERT INTO games(user_id, no_of_tries) VALUES($USER_ID, $NUMBER_OF_TRIES) ")
    exit
  fi
}

GUESS_FUNCTION start
