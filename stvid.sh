#!/bin/sh

sudo killall motion

sudo ssh user@raspberry2 'sudo killall motion'

echo "---------------------------------------------CONTROL OFF---------------------------------------"
