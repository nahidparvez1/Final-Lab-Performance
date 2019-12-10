##!/bin/bash
#bash Menu Script Example

PS3='Please Choose an Option: '
options=("Addition" "Subtraction" "Multiplication" "Division" "Quit")

echo "Type A: "
read a

echo "Type B: "
read b

select opt in "${options[@]}"
do
case $opt in
"Addition")
 add=`expr $a+$b| bc`
echo "$add"
;;
"Subtraction")
 sub=`expr $a-$b| bc`
echo "$sub"
;;
"Multiplication")
 mul=`expr $a*$b| bc`
echo "$mul"
;;
"Division")
 div=`expr $a/$b| bc`
echo "$div"
;;
"Quit")
break
;;
*) echo "Invalid Option $REPLY";;
esac
done