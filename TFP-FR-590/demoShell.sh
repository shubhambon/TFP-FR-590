##!bin/bash -x
numberValue=10
stringValue="TFP26"
echo $numberValue
echo $stringValue

for ((i=0;i<10;i++))
do
       echo $i

done


#while loop syntex
q=10
while [ $q != 0 ]
do
       echo $q
       ((q--))
done


#syntex for case statement
dayvalue=5
case $dayvalue in
       1)echo "Monday"
                ;;
       2)echo "Tuesday"
                ;;
       3)echo "Wednesday"
                ;;
       4)echo "Thusday"
                ;;
       5)echo "Friday"
                ;;
       6)echo "Saturday"
                ;;
       7)echo "Sunday"
                ;;
       *)echo "Enter the correct value"
                ;;
esac


#syntex for if else
#-lt for less than
#-gt for greater than
#-le less than equal to
#-ge greater than or equal to
#-ne not equal to

Value=1
if [ $Value != 11 ]
then

    echo "If block"
fi

if [ $Value != 11 ]
then

    echo "If block"
else
    echo "else block"
fi

if [ $Value == 11 ]
then

    echo "If block"
elif [ $Value == 10 ]
    then
    echo "inside elif"
    else
            echo "iside elif else block"
fi

#function syntex

#1. parametarized function
read -p "Enter the name" empName
read -p "Enter the dep" depName

function mapDepName(){
     local eName=$1
     local dName=$2
     echo $eName "work's in" $dName "dep"
}


mapDepName $empName $depName

#2. Non parametarized function

function wlcomeFunction(){
      echo "Welcome to the game"
}

