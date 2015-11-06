# I worked on this challenge [by myself ].
# This challenge took me [1] hours.


# Pseudocode

# Initial Solution

def super_fizzbuzz(array)
  array.map! do |num|
    if num % 15 == 0
      "FizzBuzz"
    elsif num % 5 == 0
      "Buzz"
    elsif num % 3 == 0
      "Fizz"
    else
      num
    end
  end
end
# Refactored Solution


# Reflection