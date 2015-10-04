# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below



def smallest_integer(list_of_nums)
  #if imput of the arry is empty nil
   list_of_nums == nil
    return nil
   #make a counter for the while loop
  counter = 1
  x = 0
  while list_of_nums < x

  end


    else

   # each nums > x
    # p x
  end
x += 1

end

end


refactor
    #I spelled the method wrong
  def smallest_integer(nums)
    #the input array empty put nil
    min = nil
    #each number needs to check and see smallest
    nums.each do |x|
    # x will do what comes next
    if min.nil? || min > x
    #x will be less min
    min = x
  end
end
  min
end