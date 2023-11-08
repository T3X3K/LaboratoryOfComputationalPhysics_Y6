#!/bin/bash

# a
if ! test -e ./students; then
    mkdir students
fi
cd students
fil="LCP_22-23_students.csv"
if ! test -e $fil; then
    wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
fi

# b
grep "PoD" $fil | > PoD.csv
grep "Physics" $fil | > Physics.csv

# c
for i in {A..Z}; do
grep -c "^$i" LCP_22-23_students.csv;
done

# d
counter=0
for i in {A..Z}; do
variable=$(grep -c "^$i" LCP_22-23_students.csv)
if [ $variable -ge $counter ]; then
most=$i
counter=$variable;
fi
done

# e

