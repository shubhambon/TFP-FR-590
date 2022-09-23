if echo $var | egrep -q '^[0-9]+$'; then
    # $var is a number
else
    # $var is not a number
fi
