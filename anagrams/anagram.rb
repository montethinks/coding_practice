class Anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    words.select do |word|
      next if @anagram.downcase == word.downcase
      anagram?(word)
    end
  end

  def anagram?(word)
    count_letters(@anagram.downcase) == count_letters(word.downcase)
  end

  private

  def count_letters(word)
    word.chars.each_with_object(Hash.new(0)) do |char, collection|
      collection[char] = word.count(char)
    end
  end
end
