#!/bin/bash
#This script is checking the free memory space

echo ""
echo "********************** SYSTEM MEMORY REPORT **********************"
echo ""
echo "------------------------------------------------------------------"
#free -ht | awk 'NR==1 {print}'
free -ht | awk 'NR==1 {print "       | "  $1 " | " $2 "  | " $3 "  | " $4 " | " $5 " | " $6 " | "}'
echo "------------------------------------------------------------------"
#free -ht | awk 'NR==2 {print}'
free -ht | awk 'NR==2 {print $1 "   | " $2 " | " $3 " | " $4 " | " $5 "  | " $6 "      | " $7 "     | "}'
echo "------------------------------------------------------------------"
#free -ht | awk 'NR==3 {print}'
free -ht | awk 'NR==3 {print $1 "  | " $2 " | " $3 "    | " $4 " | "}'
echo "--------------------------------"
#free -ht | awk 'NR==4 {print}'
free -ht | awk 'NR==4 {print $1 " | " $2 " | " $3 " | " $4 " | "}'
echo "--------------------------------"

free_av=$(free -ht | grep "Total" | awk '{print $4}')
free_av1=$(free -ht | grep "Total" | awk '{print $4}' | sed 's/Gi//')
threshold=5

if [[ $(echo "$free_av1 > $threshold" | bc -l) ]]
then
	echo ""
	echo "Memomry is not at Risk, Available : $free_av"
else
	echo ""
	echo "Memory is at Risk $free_av , free up some space ASAP"
	mail -s "Free RAM ALERT" "g*******@gmail.com"
fi
echo ""
