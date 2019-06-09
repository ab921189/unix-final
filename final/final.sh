#!/bin/bash

mkdir -p Dataset
echo "MENU "

echo "1.SetData\n2.Set Reminder\n3.ListDataSet\n4.Clear Data"
read choice

if [ "$choice" = "1" ] 
then
   perl final.pl

elif [ "$choice" = "2" ]
then
      sh ./Dataset/Data.sh
elif [ "$choice" = "3" ]
then
  echo "\n"
    cat ./Dataset/data

elif [ "$choice" = "4" ]
then
    rm -r Dataset
     crontab -r
else echo "Goobye"

fi
