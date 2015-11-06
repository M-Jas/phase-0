# Reverse Words

# I worked on this challenge [by myself ].
# This challenge took me [#] hours.

# Pseudocode______________________________________________________________________________
# INPUT: Takes an array
# OUTPUT
def reverse_words(string)
  array = string.split(" ")
  array.map! do |word|
    word.reverse
  end
  p array.join(" ")
end
# REFACTOR_________________________________________________________________________________
def reverse_words(string)
  string.split(" ").map!{ |word| word.reverse }.join(" ")
end




# Reflection