#!/bin/bash

echo "Enter the new assignment name:"
read new_assignment

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=$new_assignment/" config/config.env

echo "Assignment updated to $new_assignment"
echo "Rerunning reminder app..."

./startup.sh

