#!/bin/bash
crontab -l|{ cat; echo "* * * * *  /home/ab921189/final/Dataset/test"; }| crontab -
chmod u+x /home/ab921189/final/Dataset/test