#!/bin/bash

echo "Welcome to Password Generator"
read -p "Enter password length : " len
if (($len < 0)); then 
    echo "Password length cannot be negative."
else 
symbols=("!" "^" "#" "+" "[" "]" "*" "\\" "?" "." "," ";" "@" "&" "{" "}")
numbers=({0..9})
lower=({a..z})
upper=({A..Z})

random_choicer(){
local -n arr="$1"
local random_index=$(( RANDOM % ${#arr[@]} ))
local chosen_element="${arr[$random_index]}"
echo "$chosen_element"
}
password=""
for (( i=0; i<$len; i++ )); do
  random_type=$((1 + $RANDOM % 4))
if [ $random_type == 1 ]; then
    password+="$(random_choicer symbols)"
elif [ $random_type == 2 ]; then
    password+="$(random_choicer numbers)"
elif [ $random_type == 3 ]; then
    password+="$(random_choicer lower)"
elif [ $random_type == 4 ]; then
    password+="$(random_choicer upper)"
else 
    echo "Error!"
fi
done
echo "Generated password : $password"

fi