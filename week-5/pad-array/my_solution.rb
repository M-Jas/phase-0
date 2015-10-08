# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# def pad!(array, min_size, value = nil)
#   if array.length >= min_size
#     return array

#   end
#   dif = min_size - array.length
#    dif.times do
#     array.push value

#   end
#     return array

#   end
#  pad!([1, 3, 5], 5)

def pad(array, min_size, value = nil) #non-destructive
   if array.length >= min_size
     return array
  end
  new_array = array.clone
  dif = min_size - new_array.length
  dif.times do
    new_array.push(value)
  end
  return new_array
end
# pad([1, 3, 5], 5)


# 3. Refactored Solution



# 4. Reflection