#!/bin/bash

echo "Enter your name:"
read name

main_dir="submission_reminder_$name"
mkdir -p "$main_dir/config"
mkdir -p "$main_dir/scripts"
mkdir -p "$main_dir/data"

cp config.env "$main_dir/config/"
cp functions.sh "$main_dir/scripts/"
cp reminder.sh "$main_dir/scripts/"
cp submissions.txt "$main_dir/data/"

# You'll create this file yourself later
cp startup.sh "$main_dir/scripts/"

chmod +x "$main_dir"/scripts/*.sh

echo "Environment created in $main_dir"
