# Smallest Integer

# I worked on this challenge [by myself for 12 hours].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below


#get the smallest num of the int
# the nums < other numner
# arry empty = nill

# def smallest_integer(list_of_nums)
#   #if imput of the arry is empty nil
#   if list_of_nums.length == 0
#     return nil
#   elsif list_of_nums.length == 1
#       return list_of_nums[0]
#   else
#     for list_of_nums.each do |x|
#       if list_of_nums[0] < list_of_nums[x]
#          list_of_nums[0] = list_of_nums[x]


def smallest_integer(list_of_nums)
  if list_of_nums.length == 0
    return nil
  else
     list_of_nums.each do |value|
      if list_of_nums[0] > value
        list_of_nums[0] = value
      end
    end
    list_of_nums[0]
  end
end




#--------------------------------------------------------------



def smallest_integer(nums)
     min = nil
  nums.each do |x|
    if min.nil? || min > x
      min = x
    end
  end
    min
end
#The input array empty put nil
#each number needs to check and see smallest
#     # x will do what comes next

#     #x will be less min

