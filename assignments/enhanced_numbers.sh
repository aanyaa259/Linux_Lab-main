#!/bin/bash

# Ask for user input
read -p "Enter start value: " start
read -p "Enter end value: " end
read -p "Enter step value: " step

# Validate that step is positive
if [ "$step" -le 0 ]; then
  echo "Error: Step must be a positive number."
  exit 1
fi

# Print numbers in the given range
for (( i=start; i<=end; i+=step ))
do
  echo "Number: $i"
done