#!/bin/bash
echo "Customer Name"
read name
touch $name.txt
echo "---------------------------------------------------" >> $name.txt
echo "welcome $name" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
echo "Item - Quantity - Price - Cost" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
echo "Items Available"
echo "1.Rice"
echo "2.sugar"
echo "3.wheet"
echo "4.milk"
echo "5.cheese"
rice=10
sugar=20
wheet=30
milk=40
cheese=50
while [ "$item" != "0" ]
do
	echo "Enter Item"
	read item
	case $item in
		1)
			echo "Enter Quantity"
			read qty
			cost1=`echo "scale=2; $qty * $rice" | bc`
			echo "Rice - $rice - $qty - $cost1" >> $name.txt
			;;
		2)
			echo "Enter Quantity"
			read qty
			cost2=`echo "scale=2; $qty * $sugar" | bc`
			echo "Sugar - $sugar - $qty - $cost2" >> $name.txt
			;;
		3)
			echo "Enter Quantity"
			read qty
			cost3=`echo "scale=2; $qty * $wheet" | bc`
			echo "Wheet - $wheet - $qty - $cost3" >> $name.txt
			;;
		4)
			echo "Enter Quantity"
			read qty
			cost4=`echo "scale=2; $qty * $milk" | bc`
			echo "Milk - $milk - $qty - $cost4" >> $name.txt
			;;
		5)
			echo "Enter Quantity"
			read qty
			cost5=`echo "scale=2; $qty * $cheese" | bc`
			echo "Cheese - $cheese - $qty - $cost5" >> $name.txt
			;;
	esac
done
echo "---------------------------------------------------" >> $name.txt
subtotal=`echo "scale=2; $cost1 + $cost2 + $cost3 + $cost4 + $cost5" | bc`
echo "Sub Total - $subtotal" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
a=`echo "scale=2; $subtotal / 100" | bc`
gst=`echo "scale=2; $a * 14" | bc`
echo "14% GST - $gst" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
nettotal=`echo "scale=2; $subtotal + $gst" | bc`
echo "Net Total - $nettotal" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
echo "Thank you for shopping with us" >> $name.txt
echo "---------------------------------------------------" >> $name.txt
cat $name.txt