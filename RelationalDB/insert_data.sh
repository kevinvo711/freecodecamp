#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE games, teams"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [ $YEAR != "year" ]
then
  # WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE team_id='$WINNER'")
  # OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE team_id='$OPPONENT'")
  TEAM_NAME_1=$($PSQL "SELECT name FROM teams WHERE name like '$WINNER'")
  TEAM_NAME_2=$($PSQL "SELECT name FROM teams WHERE name like '$OPPONENT'")
  if [[ -z $TEAM_NAME_1 ]]
  then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  fi
  if [[ -z $TEAM_NAME_2 ]]
  then
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  fi
  TEAM_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name like '$WINNER'")
  TEAM_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name like '$OPPONENT'")
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$TEAM_WINNER,$TEAM_OPPONENT,$WINNER_GOALS,$OPPONENT_GOALS)")
  if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
  then
    echo Inserted into games, $YEAR $ROUND $TEAM_WINNER $TEAM_OPPONENT $WINNER_GOALS $OPPONENT_GOALS
  fi
fi
done
