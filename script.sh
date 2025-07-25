#!/bin/bash
# Copyright (C) 2025 İbrahim Hakkı Ergin <ibrahimh.ergin@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

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