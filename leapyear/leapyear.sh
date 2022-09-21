echo “Enter the year”
read year
chk=`expr $year % 4`
if [ $chk –eq 0 ]
then
echo “ $year is a leap year ”
else
echo “ $year is a not leap year ”
fi
