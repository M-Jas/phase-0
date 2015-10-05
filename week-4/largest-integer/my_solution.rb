# Largest Integer

# I worked on this challenge [by myself ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# This is going to be similiar to 4.6.1
# Need to find the largest number in the list.

def largest_integer(list_of_nums)
  if list_of_nums.length == 0
    return nil
  else
     list_of_nums.each do |value|
      if list_of_nums[0] < value
        list_of_nums[0] = value
      end
    end
    list_of_nums[0]
  end
end


#___________________________________________
#Refactor

#Like the min I changed it to the max.

def largest_integer(list_of_nums)
     max = nil
  list_of_nums.each do |x|
    if list_of_nums.max || list_of_nums.max < x
      max = x
    end
  end
    list_of_nums.max
end

#Three test left to fail.
#Trying to find the largest_integer for -10 -20 -30
#Trying to find largest positve integer no matter  of the order
#Trying to find largest negative integer no matter  of the order
#last try call max on nums and it worked