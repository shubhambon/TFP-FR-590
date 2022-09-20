eclare -A myDictionary
Dictionary[Name]="XYZ"
myDictionary[Age]=23
myDictionary[Gender]="M"

echo "before deleating the value"
echo ${myDictionary[@]}
echo ${myDictionary[Name]}
echo ${!myDictionary[@]}

echo "After deleating the value"
unset myDictionary[Gender]
echo ${myDictionary[@]}
echo ${!myDictionary[@]}

echo "After updating a value"
myDictionary[Name]="PQR"
echo ${myDictionary[@]}
echo ${#myDictionary[@]}
