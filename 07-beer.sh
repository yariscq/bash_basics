#!/bin/sh

echo "Let's sing a beer song"
echo "How many bottles?"
read count

while [ $count -ge 0 ]; do
  if [ $count -ge 2 ]; then
      echo "$count bottles of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  elif [ $count -eq 1 ]; then
      echo "$count bottle of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  else
      echo "no more bottles of beer on the wall"
  fi
  
  # the following statement is equivalent to: let "count=count-1"
  ((count = count - 1))
 done
echo "How many days until Christmas"

read days

while [ $days -ge 0 ]; do
  if [ $days -ge 2 ]; then
      echo "on the $days day of Christmas, my true love gave to me...."
      echo "something something and a pear tree"
  elif [ $days -eq 1 ]; then
      echo "on the last day of Christmas, my true love gave to me"
      echo "a chocolate and a rosey"
  else
      echo "Christmas is over"
  fi
  
  # the following statement is equivalent to: let "count=count-1"
  ((days = days - 1))

done

# exercise: implement another counting song (such as 12 days of Christmas) 
# using loops and if statements.
# nothing