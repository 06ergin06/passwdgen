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
        case $random_type in 
            1) password+="$(random_choicer symbols)";;
            2) password+="$(random_choicer numbers)";;
            3) password+="$(random_choicer lower)";;
            4) password+="$(random_choicer upper)";;
        esac
    done
    echo "Generated password : $password"
fi