#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

RANDOMICO=$((1 + $RANDOM % 1000))
echo $RANDOMICO
echo Enter your username:
read USERNAME
USERS=$($PSQL "SELECT name FROM users WHERE name='$USERNAME'")
GAMER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")

if [[ -z $USERS ]]
then
  echo Welcome, $USERNAME! It looks like this is your first time here.
  INSERT1=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")
  GAMER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
else
  N_GAMES=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id=$GAMER_ID")
  N_GUESSES=$($PSQL "SELECT MIN(n_guesses) FROM games WHERE user_id=$GAMER_ID")
  echo Welcome back, $USERNAME! You have played $N_GAMES games, and your best game took $N_GUESSES guesses.
fi

echo "Guess the secret number between 1 and 1000:"
read USERGUESS
ACTUAL_GUESSES=1

while [[ $USERGUESS != $RANDOMICO ]]
do
  #echo $ACTUAL_GUESSES
  if [[ $USERGUESS =~ ^[0-9]+$ ]]
  then
    if [[ $USERGUESS < $RANDOMICO ]]
    then
      echo "It's higher than that, guess again:"
      read USERGUESS
    else
      echo "It's lower than that, guess again:"
      read USERGUESS
    fi
    ((ACTUAL_GUESSES++))
  else
    echo That is not an integer, guess again:
    read USERGUESS
  fi
done

INSERT2=$($PSQL "INSERT INTO games(user_id, n_guesses, secret) VALUES ($GAMER_ID, $ACTUAL_GUESSES, $RANDOMICO)")
echo "You guessed it in $ACTUAL_GUESSES tries. The secret number was $RANDOMICO. Nice job!"