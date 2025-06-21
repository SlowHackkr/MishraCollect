#!/bin/bash

# User's name input

# validating name
while true; do
    echo -n "Enter your name: "
    read name

    # Match at least two alphabetic "words" with space in between
    if [[ "$name" =~ ^[a-zA-Z]+[[:space:]]+[a-zA-Z]+$ ]]; then
        echo "================================================================="
        echo "                       Ram Ram $name"
        echo "================================================================="
        break
 else
      echo "Type your name properly. Type Again Please .........."
    fi
done
# validating the email

struc_email="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

while true; do
	echo -n "Enter your email: "
	read email
	if [[ $email =~ $struc_email ]]; then
		break
	else
	        echo " Invalid email format. Try again. "
	fi

done

# Validate age an number or not

while true; do
	echo -n "Enter your age: "
	read age
	if [[ "$age" =~ ^[0-9]+$ ]]; then
		break
	else
	        echo " Invalid age. Must be a number. Try again"
	fi
done

# Set output file path

file="$(pwd)/save_details.json"

# create JSON entry

name_json="{\"name\": \"$name\", \"email\": \"$email\", \"age\": $age}"

# Append to file with a comma separator if needed

if [ ! -s "$file" ]; then
	echo "[" > "$file"
else
        sed -i '$ s/]/,/' "$file"
fi

echo "$name_json" >> "$file"
echo "]" >> "$file"

# Confirmation

echo " Details saved in JSON format at: $file"