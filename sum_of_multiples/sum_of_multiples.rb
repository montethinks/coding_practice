class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def self.to(limit)
    new(3, 5).to(limit)
  end

  def to(limit)
    result = []

    (0...limit).each do |num|
      result << num if divisible_by_factor?(num)
    end
    result.reduce(&:+)
  end

  def divisible_by_factor?(number)
    @factors.each do |factor|
      return true if number % factor == 0
    end
    false
  end
end
