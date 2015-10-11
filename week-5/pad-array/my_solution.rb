# Pad an Array

# I worked on this challenge [with: Eunice Do]

# I spent [2] hours on this challenge.


# 0. Pseudocode

# What is the input? Takes an Array a minimum size (non-negative integer)
# What is the output? Returns an array with new pad value up to the size.

# What are the steps needed to solve the problem?
# Create a method caled pad! for destructive.
# accepts an array, a minimum size (non-negative integer) for the array
# Possible optional argument for the method pad
#When the array is less than or equal to the min size of the array it will RETURN the array padded to the size of the orginal array
#When the array is size is less then the length it should RETURN a new array with up to the pad value
# 1. Initial Solution Dest
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  end
  dif = min_size - array.length
    dif.times do
      array.push value
  end
    return array
  end
 #pad!([1, 3, 5], 5)
#Non-destructive_______________________________________________________________________
def pad(array, min_size, value = nil)
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


# 3. Refactored Solution_______________________________________________________________
# If the minimum size is less than or equal to the length of the array, it should just return the array.
# That is, pad([1,2,3], 3) should return [1,2,3].

def pad(array, min_size, value = nil)
  if array.length >= min_size
    return array
  (min_size - array.length).each.inject{|value, array| array << value }
  end
    return array
end
  p pad!([1, 3, 5], 5)

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#   We were, but when I went to do it again I was getting a bit confused. The directions were all over the site, and I started to jump out of order.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   We did. It was in English and very direct so we could not deviate from the path. I think I had issues with the addition of the third argument for value = nill

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   For the destructive I could not make it chnage the orginal array. But that is fine because it gave me the answer for the non-destructive.
# When you refactored, did you find any existing methods in Ruby to clean up your code?

# How readable is your solution? Did you and your pair choose descriptive variable names?
#   Since we translated the pseudocode it made it more readable.

# What is the difference between destructive and non-destructive methods in your own words?
#   Destructive is going to change the original array when the non-destructive will not modify the array.