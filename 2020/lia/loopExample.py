#!/usr/bin/env python3

count = int(input("How many times did the party guests click their glasses?"))
count = count - 1
Addition = 0

while count > 0 :
	Addition = Addition + count
	count = count - 1

print(Addition)
