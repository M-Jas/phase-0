# Longest String

# I worked on this challenge [by myself ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# INPUT: takes a array of strings
# OUTPUT: returns the longest string
# create method longest_string
# list of words is the argument
# if the list is empty method returns nill
# else each word in the list will test if it is larger than variable x
# if larger then the next word  return the string



# Your Solution Below
def longest_string(list_of_words)
  if list_of_words == []
    return nil
  end
    else
      list_of_words.each do |x|
#  if it is the only element return ''
#  i want x to check and see if x is larger than the next word.
      if list_of_words "" < x
         list_of_words '' == x
      end

    end
     list_of_words

end
#I tried to swtich them to integer and hanged to a fixnum error

#___________________________________
#Refactor
 def longest_string(list_of_words)
#   # if list_of_words == []
#   #     return nil
#     #else
   list_of_words.max_by{|a, b|        a.length <=> b.length}
#         #.max_by compairs the list by a and b to see what is larger
# end


