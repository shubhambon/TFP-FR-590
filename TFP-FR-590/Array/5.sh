#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array

n=0
for((  number=1; number<=100; number++ ))
do
 if [ $number -ge 11 ]
   if [ $number -gt 1 ]
   then
   n=$number
   sum=0
   reminder=0

  while [ $n -gt 0 ]
  do

    reminder=$(($number%10))
    sum=$((($sum*10)+$reminder))
    n=$(($n/10))

   done

  if [ $(($number)) -eq $sum ]
  then
      echo $number
  fi
fi
fi
done

