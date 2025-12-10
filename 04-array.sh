#! /bin/bash

# Array assignment
persons=("Alice" "Bob" "Charlie")

echo "arrays is ${persons[1]}"

# Print each element in the array
for person in "${persons[@]}"; 
do
    echo "Hello, $person!"  
done        