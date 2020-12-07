#!/bin/bash
echo "How many times to run"
read var1
count=0
while [[ $var1 -ge count ]];
do
echo "Iteration"
echo "count is $count"
count=$((count+1))
done

