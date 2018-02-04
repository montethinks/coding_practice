require 'pry'
# Write a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.

# If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.

# input: number (positive only?)
# output: number - sum of the multiples of the number but not including the original number

# algorithm: - get range of numbers from 0..num (not including num)
#            - select numbers that are multiples of num
#               - multiples can be evenly divided (modulo) num % number_in_range == 0
#            - reduce number to one number .reduce(&:+)

#            TODO: introduce multiple checking values (3 and 5 by defualt)

class SumOfMultiples
  def self.to(limit, multiples = [3, 5])
    (0...limit).select do |num|
      multiples.any? { |multiple| num % multiple == 0 }
    end
      .reduce(:+)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
end

# p SumOfMultiples.to(20)
# p SumOfMultiples.new(4, 6).to(15)

# def sum_of_multiples(limit, multiples = [3, 5])
#   (0...limit).select do |num|
#     multiples.any? { |multiple| num % multiple == 0}
#   end
#   .reduce(:+)
# end

# p sum_of_multiples(20)

# input: array of integers that are multiples
# ouput: one integer (the sum of the multiples of a range)



# def sum_of_multiples(end_num, *multiples)
#   range = (1..end_num - 1)
#   result = []
# # binding.pry
#   range.each do |num|
#     if num % multiples.first == 0
#       result << num
#     elsif num % multiples.last == 0
#       result << num
#     else
#       num
#     end
#   end

#   result.reduce(&:+)
# end

# p sum_of_multiples(15, 4, 6) # => 78 (sum of multiples 3 and 5)