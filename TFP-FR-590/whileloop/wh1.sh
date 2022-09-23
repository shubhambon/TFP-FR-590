#1.Write a program that takes a command-line argument n and prints atable of the powers of 2 that are less than or equal to 2^n till 256 isreached..

echo "Enter a Number:"
read number

exp=2
result=1
while [  $result -le 256 ]
do
    echo  "power table of $number is:$result"

    result=$(($result*$exp))

done

