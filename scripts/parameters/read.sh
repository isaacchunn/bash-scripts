#!/usr/bin/bash

#Read the user's variables
read -s -t 5 -p "Input your first name: " name
read -s -t 5 -p "Input your age: " age
read -s -t 5 -p "Input the town you are from: " town

echo "My name is $name"
echo "I am $age"
echo "I am from $town"
