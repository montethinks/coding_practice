# from 1 to 100
# multiples of 3 pring "Fizz"
# multiples of 5 print "Buzz"
# mulitples of 3 AND 5 print "FizzBuzz"

def fizz_buzz(limit, delimiter = ' ')
  raise ArgumentError, "Must be greater than 0" if limit < 1

  range = (1..limit).to_a.map do |num|
    if num % 3 == 0 && num % 5 == 0
     "FizzBuzz"
    elsif num % 3 == 0
     "Fizz"
    elsif num % 5 == 0
     "Buzz"
    else
      num
    end 
  end
  range.join(delimiter)
end

puts fizz_buzz(100)

