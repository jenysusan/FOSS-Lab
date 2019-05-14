#! /bin/sh

echo "Enter two numbers:"
read a b
echo "Calculator options:"
echo "1.Addition
2.Subtraction
3.Multiplication
4.Division
5.Modulus"
echo "Enter your choice:"
read ch
if [ $ch -eq 1 ]
	then
		echo "Sum is `expr $a + $b`"
elif [ $ch -eq 2 ]
	then
		echo "Difference is `expr $a - $b`"
elif [ $ch -eq 3 ]
	then
		echo "Product is `expr $a \* $b`"
elif [ $ch -eq 4 ]
	then
		echo "Quotient is `expr $a / $b`"
elif [ $ch -eq 5 ]
	then
		echo "Modulus is `expr $a % $b`"
else
	echo "Invalid Choice"

fi
