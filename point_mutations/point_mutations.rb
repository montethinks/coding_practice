class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(distance)
    case strand_length(@strand, distance)
    when 0 # if @strand.size == distance.size
      calculate_distance(@strand, distance)
    when -1
      calculate_distance(@strand.slice(0, distance.size), distance)
    when 1
      calculate_distance(distance.slice(0, @strand.size), @strand)
    end
  end

  private

  def calculate_distance(strand, distance)
    result = 0
    strand.size.times do |idx|
      next if strand[idx] == distance[idx]
      result += 1
    end
    result
  end

  def strand_length(strand, distance)
    strand <=> distance
  end
end
