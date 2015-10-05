# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#the question is set up the same as the last two
#looking for shortest string in a list of words
#I used [] but this is for a String

#INPUT:A list of words "strings"
#OUTPUT: The shortest string

def shortest_string(list_of_words)
  if list_of_words == []
    return nil
  end
  else
    list_of_words.each do |x| #telling each word in the array to do x
     if list_of_words[''] > x
        list_of_words[''] == x
     end
  end
    list_of_words
end
# i either get no implicit conversion of String into Integer for this
#if I take [''] out I get > as a undifiend method.


#-----------------------------------

def shortest_string(list_of_words)
  #if list_of_words == []
     #return nil
list_of_words.min {|a,b| a.length <=> b.length}
#this looks more like they are comparing.

 #list_of_words.min_by {|a| a.size}
 #this one also works I and them both in irb and they check out.


end