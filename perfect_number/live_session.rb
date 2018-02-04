require 'pry'
# input: number  (735291)
# output: rotated number (321579)
# rules: rotation 735291
#                 352917
#                 329175
#                 321759
#                 321597
#                 321579
#       rotate first index to last number -1
#       move to next index to last number

# algorithm: convert number to string 
#            convert string to array of chars
#            
#            iterate through with each index
#            - break number into two parts: 
#              - frozen number current_index
#              - rest of number
#              for index 0 [7] [3, 5, 2, 9, 1]
#               rest of number + frozen number [3, 5, 2, 9, 1, 7]
#           - continue until index == arr.size - 1 + index
#           - convert rotated_num to_integer

def max_rotation(number)
  result = []
  current_number = number
  5.times do |_|
    current_number = rotate_one_number(current_number)
    result << current_number
  end
  result
end

def rotate_one_number(number)
  digits = number.to_s.chars
  rotated_number = []

  rotated_number << digits[1..digits.size-1] + digits.slice(0, 1)
  rotated_number.flatten.join('').to_i
end

# p rotate_one_number(735291) == 352917

p max_rotation(735291) #== 321579

