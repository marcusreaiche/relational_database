#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# Fill in the teams table
# Loop over the CSV rows
cat ./games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  # Skip first row
  if [[ $YEAR != year ]]
  then
    # Check if winner is already in teams
    WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER';")
    # If not, add it to teams
    if [[ -z $WINNER_ID ]]
    then
      INSERT_WINNER=$($PSQL "insert into teams(name) values ('$WINNER');")
      if [[ $INSERT_WINNER == "INSERT 0 1" ]]
      then
        WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER';")
      fi
    fi 
    # Check if opponent is already in teams
    OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT';")
    # If not, add it to teams
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_OPPONENT=$($PSQL "insert into teams(name) values ('$OPPONENT');")
      if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT';")
      fi
    fi
    # Fill in the games table
    INSERT_TO_GAMES=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $W_GOALS, $O_GOALS);")
  fi
done 
