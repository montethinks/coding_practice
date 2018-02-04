class School
  attr_accessor :roster

  def initialize
    @roster = {}
  end

  def to_h
    roster.sort.to_h.each_value { |names| names.sort! }
  end

  def add(name, grade)
    roster[grade] ||= []
    roster[grade].push(name)
  end

  def grade(number)
    roster.fetch(number, [])
  end
end