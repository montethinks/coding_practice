def gcd(a, b)
  minimum = [a, b].min
  minimum.downto(1) do |num|
    return num if a % num == 0 && b % num == 0
  end

  # start from the lowest number and then stop execution at the first num that's found.

  # max = [a, b].max

  # result = (1..max).each_with_object([]) do |num, dividers|
  #   dividers << num if a % num == 0 && b % num == 0
  # end

  # result.max
end

p gcd(9, 15) # => 3
p gcd(100, 11) # => 1
p gcd(14, 28) # => 14
