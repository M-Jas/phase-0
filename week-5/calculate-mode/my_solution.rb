# Calculate the mode Pairing Challenge

# I worked on this challenge [Worked with Michael J and James K ]

# I spent [3] hours on this challenge.

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


# First_Trial__________________________________________________
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

# 3. Refactored Solution______________________________________
def mode (array)
  array.each_with_object(Hash.new(0)){|item, numbers| numbers[item] += 1}

  biggest_array = numbers.values.sort!.last
  numbers.delete_if {|key, value| value < biggest_array}
  numbers.keys
end
# 4. Reflection_____________________________________________________________
# Which data structure did you and your pair decide to implement and why?
#   At first we took the Array route and figured out that we will need to have values for the occurances of the numbers or keys.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#   This was the first time that it rally worked for me. It really started to click. Not a full out light buld moment, but close. I started to see how the pseudocode could translate.
# What issues/successes did you run into when translating your pseudocode to code?
#     My peer really showed me how to break down the pseudocode. I was just doing these quick snips that were to big and did not break down the proplem.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   We compressed the code with the each_with_object method. I am finding it easier to do the blocks on one line, it makes way more sense to me.