# palindrones "rotor" "redder"
# "motor" is not a palidrone

# write a method that determines if a given string is a palidrone

# - ignore non letters for example 'no13on' is considered a palindrone
# - case insensitve
# - can't use reverse method
# - can't use regex
# # bonus: how would you solve it without traversing the string more than once
#  - make a variable that points to the beginning and one that points at the end
#  - they eventually meet in the middle.

# input: word
# output: a boolean

# rules: words is the same 

# data structure: array of chars

# algorithm: remove any non a-z characters
#            make downcase
#            join the arrays
#            compare original with reversed



def palindrone(word)
  alphabet = ('a'..'z')
  characters = word.downcase.chars
  original_word_chars = []
  reversed_word_chars = []


  characters.each do |char|
    original_word_chars << char if alphabet.cover?(char)
  end

  original_word_chars.reverse_each { |char| reversed_word_chars << char }


  original_word_chars.join('') == reversed_word_chars.join('')
end

p palindrone("rotor") == true
p palindrone("redder") == true
p palindrone("motor") == false
p palindrone("no13on") == true