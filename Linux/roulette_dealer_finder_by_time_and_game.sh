#!/bin/sh


#!/bin/bash
echo "****Enter Date in mmdd (for example 0310,0312,0315) format:****"
read x

echo "Date enter is ${x}"

echo "****Enter time in H format:****  "
read y
echo "Time added is ${y}:00:00"

echo "****Enter AM/PM (captital only):****"
read z
echo "**AM/PM:** ${z}"

echo "For BlackJack Game Press 3 press 'ENTER' and then press 4"
echo "For Roulette Game Press 5 press 'ENTER' and then press 6"
echo "For Texas_Hold_EM Game Press 7 press 'ENTER' and then press 8"
read a
read b

#echo "Hour AM/PM	BlackJack_Dealer_FNAME LAST	Roulette_Dealer_FNAME LAST	Texas_Hold_EM_dealer_FNAME LAST"

echo "****Dealer on duty was:**** "
awk -v c=$a -v d=$b '{print $1,$2,$c,$d}' ${x}_Dealer_schedule | grep "${y}:00:00 ${z}"


