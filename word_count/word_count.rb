
# class Phrase
#   def initialize(word)
#     @word = word
#   end

#   def word_count
#     words = @word.gsub(/[^\w+']/, " ").split.map(&:downcase)

#     words.each_with_object(Hash.new(0)) do |word, list|
#       list[word] += 1
#     end
#   end
# end

class Phrase
  def initialize(words)
    @words = words.gsub(/[^\w+']/, " ").split.map(&:downcase)
  end

  def word_count
    clean_words = @words.map { |word| transform_word(word) }
    
    clean_words.each_with_object(Hash.new(0)) do |word, list|
      list[word] += 1 
    end
  end

  def transform_word(word)
    word.gsub(/[^a-zA-Z0-9']/, '').gsub(/^'|'$/, '')
  end
end

