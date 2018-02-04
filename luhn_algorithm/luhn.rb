require 'pry'

class Luhn
  def initialize(number)
    @number = number
  end

  def self.create(number)
    starting_number = number * 10
    if new(starting_number).valid?
      starting_number
    else
      luhn_remainder = new(starting_number).checksum % 10
      starting_number + (10 - luhn_remainder)
    end
  end

  def addends
    digits = @number.to_s.chars.map(&:to_i)
    addend = []

    digits.reverse.each_with_index do |digit, index|
      if index.odd?
        addend << calculate(digit)
      else
        addend << digit
      end
    end
    addend.reverse
  end

  def checksum
    addends.reduce(&:+)
  end

  def valid?
    checksum % 10 == 0
  end

  private

  def calculate(number)
    digit = number * 2
    if digit >= 10
      digit -= 9
    end
    digit
  end
end




