class PigLatin
  def self.translate(english_word)
    words = english_word.split(' ')
    vowels = /\A([aeiou]|xr|y)/
    consonants = /\A[^aeiou]/
    consonant_and_qu = /\A[^aeiou]+(qu)/
    thr_sch = /\A(thr)|(sch)/
    ch_and_qu_th = /(ch|qu|th)/
    ye = /ye/

    words.map! do |word|
      if word.match(ye)
        word[1..word.size - 1] + word[0] + 'ay'
      elsif word.match(vowels) # first letter is a vowel, y, or x
        word + 'ay'
      elsif word.match(thr_sch) # thr and scho
        word[3..word.size] + word[0..2] + 'ay' # "thrush"
      elsif word.match(consonant_and_qu) # consonant + qu "square"
        word[3..word.size - 1] + word[0..2] + 'ay'
      elsif word.match(ch_and_qu_th) # first letters are ch or qu
        word[2..word.size - 1] + word[0..1] + 'ay'
      elsif word.match(consonants) # word starts with consonant
        word[1..word.size - 1] + word[0] + 'ay'
      end
    end
    words.join(' ')
  end
end
