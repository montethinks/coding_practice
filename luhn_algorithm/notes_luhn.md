Write a program that, given a number

Can check if it is valid per the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as valid.
Can return the checksum, or the remainder from using the Luhn method.
Can add a check digit to make the number valid per the Luhn formula and return the original number plus that digit. This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".

input: number (integer)
output: an array of integers (luhn number )
        a check sum (the sum of the luhn number)

rules: check digit 
        -is the right-most number

algorithm: 
Count from rightmost digit moving left 
double the value of every other digit
1111 becomes 2121

Addends:
convert number to an array of string chars
convert strings to an array integers
reverse digits
iterate through (map)
if index is odd? calculate(number)

reverse the resulting array addends.reverse
    

For any digits that thus become 10 or more, subtract 9 from the result.
8763 becomes 7733 (from 2×6=12 → 12-9=3 and 2×8=16 → 16-9=7)

calculate_number   - result = number * 2
                   - if result >= 10
                     result -= 9
                  result

# If the total (the checksum) ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to the Luhn formula; else it is not valid. So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).
checksum: 

Add all numbers in addends
addends.reduce

valid?:

if checksum % 10 == 0 
  true
else
  false
end

create:
make addends of number creation = new(number)
find checksum of number creation.checksum
add the checksum to the original number




