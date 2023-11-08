#!/bin/bash

# a
grep -v "^#" data.csv | sed -e 's/,//g' > data.txt

# b

