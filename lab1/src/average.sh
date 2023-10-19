#!/bin/bash

sum=0
n=0

for i in "$@"
do
    sum=$((sum + i))
    n=$((n + 1))
done

if [ $n -eq 0 ]
then
    echo "No arguments provided"
else
    echo "Number of arguments: $n"
    echo "Average: $(echo "scale=2; $sum / $n" | bc)"
fi