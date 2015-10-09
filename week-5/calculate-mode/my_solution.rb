# Calculate the mode Pairing Challenge

# I worked on this challenge [Worked with Michael J and James K ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
#  Taking in array and iterate through it.
# Track how many times a number comes up
# One each loop nested inside of an each loop to find the     frequent number
#  Comppaire the numbers and find the most frequent

# What is the input? Taking in the array and iterate through it
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

#created a method that takes and array as an argument
def mode(array)
#creating a new hash witha default value of zero
  numbers = Hash.new 0
#creat a array that can hold our biggest value
  biggest_array = []
#iterate through the array and set each new number as the key for the occurance. Then you will add 1 to value for each for each key
  array.each do |item|
    numbers[item] +=1
  end
#this is going to be the container that holds the values of the key. We sorted them last or biggest firs
  biggest_array = numbers.values.sort!.last
# We will delete all numbers that have less occurances
  numbers.delete_if {|key, values| values < biggest_array}
  #return the number with the most occurances
  numbers.keys
end
array = [1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5]
mode (array)
# mode(array)
#     look to see if the current item is equal to temp
#     if it is then we know to add 1 more onto the current count for that number
#     for example, if 1 is the current number set as temp
#       and 1 is item, then we can increment count by 1
#     if item = temp
#       count += 1
#     else
# #       if the count of the current number is higher than the old highest, make it the new highest
#       if count >= curr_hig
#         curr_hig = temp
#       end
# #       now we want to reset the count and make the new item we are checking into our temporary
#       count = 0
#       temp = item
#     end
#   end
#   temp.push (curr_hig)
# end





# def mode(array)
#   # temp = 0
#   curr_hig = 0
#   array.each do |item|
#     if array.select{|item| item.eql?}.length > curr_hig
#     curr_hig = array.select{|item| item.eql?}.length
#     end
#   end
#   return curr_hig
# end

# 3. Refactored Solution




# 4. Reflection