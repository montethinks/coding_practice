class Series
  def initialize(digits)
    @digits = digits.chars.map(&:to_i)
  end

  def slices(slice_count)
    if slice_count > @digits.size
      raise ArgumentError, "Number larger than available slices"
    end
    slices = []
    0.upto(@digits.size - slice_count) do |num|
      slices << @digits.slice(num, slice_count)
    end
    slices
  end
end

