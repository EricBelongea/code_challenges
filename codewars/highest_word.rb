# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# For example, the score of abad is 8 (1 + 2 + 1 + 4).

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.


def high(x)
  indexes = ('a'..'z').each_with_index.map{|l,i| [l, i+1]}.to_h
  array = x.split(" ")
  word_points = []
  array.each do |word|
    points = 0
    word.chars.each do |l|
      points += indexes[l]
    end
    word_points << points
  end
  puts word_points.inspect
  puts max = word_points.max
  puts winning_word = word_points.find_index(max)
  puts array[winning_word]
end


string = 'man i need a taxi up to ubud'

high(string)

# taxi = 'taxi'
# high(taxi)