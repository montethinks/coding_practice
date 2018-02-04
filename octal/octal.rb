class Octal
  def initialize(octal)
    @octal = octal.chars
  end

  def to_decimal
    return 0 if @octal.any? { |char| char =~ /[^0-7]/ }

    digits = @octal.map(&:to_i)
  
    decimal = []

    digits.reverse.each_with_index do |number, index|
      decimal << number * (8**index)
    end

    decimal.reduce(&:+)
  end
end
