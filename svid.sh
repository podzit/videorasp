#!/bin/sh

sudo motion
sleep 5
pgrep motion
retval=$?
if [ "$retval" = 1 ]
then
sudo motion
else
sudo ssh user@raspberry2 'sudo motion'
fi
sleep 5
sudo ssh user@raspberry2 'pgrep motion'
retval2=$?
if [ "$retval2" = 1 ]
then
sudo ssh user@raspberry2 'sudo motion'
fi
sleep 5
pgrep motion
retval=$?
if [ "$retval" = 1 ]
then
sudo motion
else
echo "---------------------------------------CONTROL ON---------------------------------"
fi
