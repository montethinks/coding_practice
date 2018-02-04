require 'pry'
# The Greek mathematician Nicomachus devised a classification scheme for natural numbers, identifying each as belonging uniquely to the categories of abundant, perfect, or deficient. A perfect number equals the sum of its positive divisors — the pairs of numbers whose product yields the target number, excluding the number itself. This sum is known as the Aliquot sum.

# Perfect: Sum of factors = number
# Abundant: Sum of factors > number
# Deficient: Sum of factors < number
# Examples:

# 6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
# 28 is a perfect number because 28 = 1 + 2 + 4 + 7 + 14.
# Prime numbers 7, 13, etc are deficient by the Nicomachus classification.
# Write a program that can tell if a number is perfect, abundant or deficient.


# input: a positive integer (natural number)
# output: a string that is "abundant", "perfect", or "deficient"
# rules: 'abundant' is sum of factors > number
#        'perfect' is sum of factors = number
#        'deficient' is sum of factors < number

#        factor is a divisor that divides evenly into the number
#        Ex: 6 (1, 2, 3, 6)
#        summing up all number excluding the number itself
#        6 = 1 + 2 + 3

# algorithm: Find the factors for a given number
#             - Get the range of numbers 1...Number (excluding number)
#             - result << factor if number % factor == 0 (add to an array)
#            Extract the sum of the factors

#            sum = sum_factors(num)

#            case sum
# when sum > number
#  'abundant'
# when sum == number 
#  'perfect'
# when sum < number
#  'deficient'
# end

# #            find_factors(num) # => return an array of integers sorted
# #            sum_factors(factors) # => return an integer sum of arr[0..-2]



# def find_factors(num)
#   result = []

#   (1..num).each do |factor|
#     result << factor if num % factor == 0
#   end

#   result
# end

# p find_factors(6)

# def sum_factors(factors)
#   factors = factors[0..-2]
#   factors.reduce(:+)
# end

# p sum_factors([1, 2, 3, 6])



# class PerfectNumber
#   def self.classify(num)
#     raise RuntimeError, "Must be a positive integer." if num < 0

#     factors = find_factors(num)
#     sum = sum_factors(factors)

#     if sum > num
#       return 'abundant'
#     elsif sum < num
#       return 'deficient'
#     else
#       return 'perfect'
#     end
        
        
#     # case sum
#     # when sum > num
#     #  return 'abundant'
#     # when sum == num 
#     #  return 'perfect'
#     # when sum < num
#     #  return 'deficient'
#     # end
#   end

#   private 

#   def self.find_factors(num)
#     result = []

#     (1..num).each do |factor|
#       result << factor if num % factor == 0
#     end

#     result
#   end

#   def self.sum_factors(factors)
#     factors = factors[0..-2]
#     factors.reduce(:+)
#   end
# end


class PerfectNumber
  class << self
    def classify(num)
      raise RuntimeError, "Must be a positive integer." if num < 0

      factors = find_factors(num)
      sum = sum_factors(factors)

      case 
      when sum > num
        'abundant'
      when sum < num
        'deficient'
      else
        'perfect'
      end
    end

    def find_factors(num)
      result = []

      (1..num).each do |factor|
        result << factor if num % factor == 0
      end

      result
    end

    def sum_factors(factors)
      factors = factors[0..-2]
      factors.reduce(:+)
    end
  end
end


# class PerfectNumber
#   def self.classify(num)
#     raise RuntimeError, "Must be a positive integer." if num < 0

#     factors = (1...num).select { |factor| num % factor == 0 }.reduce(:+)
#     # sum = factors[0..-2].reduce(:+)

#     case 
#     when factors > num then 'abundant'
#     when factors < num then 'deficient'
#     else
#       'perfect'
#     end
#   end
# end
# p PerfectNumber.classify(13)