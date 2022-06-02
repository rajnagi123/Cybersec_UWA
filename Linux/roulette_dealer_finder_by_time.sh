#!/bin/bash
echo "****Enter Date in mmdd format:****"
read x

echo "Date enter is ${x}"

echo "****Enter time in H format:****  "
read y
echo "Time added is ${y}:00:00"

echo "****Enter AM/PM (captital only):****"
read z
echo "**AM/PM:** ${z}"


echo "****Dealer on duty was:**** "
awk -F " " '{print $1,$2,$5,$6}' ${x}_Dealer_schedule | grep "${y}:00:00 ${z}"
#cat ${x}_Dealer_schedule
