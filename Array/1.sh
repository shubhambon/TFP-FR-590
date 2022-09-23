#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

declare -a random_numbers
for(( i=0; i<=9; i++ ))
do
   random_numbers[$i]=$((100+RANDOM%100))
done
for(( i=1; i<=((${#random_numbers[@]}-1));i++ ))
do
   if [ $random_numbers[i] -gt $biggest ]
   then
        biggest=$random_numbers[i]
   elfi [ {$random_numbers[i]} -lt $smallest ]
   then
      smallest=$random_numbers[i]
   fi
done
   second_biggest=${random_numbers[0]}
   second_smallest=${random_numbers[1]}

for(( i=1; i<=((${#random_numbers[@]}-1));i++ ))
do
   if [[ ${random_numbers[i]} -lt $biggest && ${random_numbers[i]} -gt $second_biggest ]]
   then
      second_biggest=${random_numbers[i]}
   elif [[ ${random_numbers[i]} -gt $smallest && ${random_numbers[i]} -lt $second_biggest ]]
   then
     second_smallest=${random_numbers[i]}
   fi
done
