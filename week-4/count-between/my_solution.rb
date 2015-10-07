# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#INPUT: Takes 3 args  array, int lower, int upper
#OUTPUT: return an array of intergers inbetween the two bounds.
# Take interger and makes array


 def count_between(list_of_integers, lower_bound, upper_bound)
# # if array is == []
# #   return 0
# # take the ints and compair them to upper and lower bound/ (
# # do the inter number fall inbetween that bounds) if so print.

   if list_of_integers == []
    return 0
#     list_of_integers= x

   elsif upper_bound < lower_bound
     return 0
   elsif lower_bound = upper_bound
#     return  # print the count
#   #elsif numb will not count < lower_bound
#   #elsif numb will not count > upper_bound
#   #
   end

 end


#Refator_____________________________
def count_between(list_of_integers, lower_bound, upper_bound)

  if list_of_integers == [] || upper_bound < lower_bound
    return 0
  x = list_of_integers
    elsif lower_bound = upper_bound
    #return total number of int in range
    elsif x < lower_bound || x >upper_bound
  #return total number of int in range
  #elsif the array is in the bounds ?

  #end
  end
end