#2.Extend the above program to sort the array and then find the 2nd largestand the 2nd smallest element.

arr=(1 2 3 4 5 8 7 12  11 )
len=${#arr[@]}
temp=0

for (( i=0; i<$len; i++ ))
do
    for ((  j=i+1; j<$len; j++ ))
    do
      if [  ${arr[i]}  -lt ${arr[j]} ]
       then
           temp=${arr[i]}
           arr[i]=${arr[j]}
           arr[j]=$temp
     fi
  done
done
echo "${arr[@]}"
echo "Second largest number is:${arr[1]}"
echo "Second smallest number is:${arr[7]}"

