all_lines=`cat numbers.txt | sort`

for item in $all_lines
do
sum=0
a=$item
while(($item >0))
do
x=`expr $item % 10`
sum=`expr $sum + $x`
item=`expr $item / 10`
done

sum1=0
b=$sum
while(($b >0))
do
y=`expr $b % 10`
sum1=`expr $sum1 + $y`
b=`expr $b / 10`
done
if [ "${sum1}" == "10" ]
then
	echo "Number : $a Sum : $sum" >> numbers_with_sum_10.txt
fi
done
