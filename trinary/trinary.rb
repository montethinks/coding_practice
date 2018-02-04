class Trinary
  attr_reader :trinary_number, :exponent_values

  def initialize(trinary_str)
    @trinary_number = trinary_str # convert_to_trinary(trinary_str)
  end

  def to_decimal
    return 0 if trinary_number.match(/\D/)
    
    result = []
    exponent_values = (0..trinary_number.size).to_a
    numbers = trinary_number.chars.map(&:to_i)

    numbers.reverse_each.with_index do |digit, idx|
      result << (digit * (3**exponent_values[idx]))
    end

    result.reduce(:+)
  end

  private

  def convert_to_trinary(trinary_str)
    if trinary_str.match(/\D/)
      trinary_str = '0'.chars.map(&:to_i)
    else
      trinary_str.chars.map(&:to_i)
    end
  end

end

# p Trinary.new('0a1b2c').to_decimal

# class Trinary
#   attr_reader :trinary_number

#   def initialize(trinary_str)
#     @trinary_number = convert_to_trinary(trinary_str)
#   end

#   def convert_to_trinary(trinary_str)
#     if trinary_str.match(/\D/)
#       trinary_str = '0'.chars.map(&:to_i)
#     else
#       trinary_str.chars.map(&:to_i)
#     end
#   end

#   def to_decimal
#     exponent_values = (0..trinary_number.size).to_a
#     result = []

#     trinary_number.reverse_each.with_index do |digit, idx|
#       result << (digit * (3**exponent_values[idx]))
#     end

#     result.reduce(:+)
#   end
# end

# p Trinary.new('0a1b2c').to_decimal


# def to_decimal(str)
#     digits = str.chars.map(&:to_i)

#     exponent_values = (0..digits.size).to_a
#     result = []

#     digits.reverse_each.with_index do |digit, idx|
#       result << (digit * (3**exponent_values[idx]))
#     end

#     result.inject(:+)
#   end

# p to_decimal('102012')
