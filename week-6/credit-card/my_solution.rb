# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [with: Kyle Smith ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:16 digits of a possible credit card number
# Output:boolean or Arugment Error
# Steps:
#initialization 16 digits
#Raise Arug Error for anything less than 16 digist long
#push digit onto an array
#insert commmas to create standalone numbers
#iterate over every other number to double it
#double digit numbers make them into 2 one digit numbers
#Add the total then dived by ten
# If divisiable by ten it is a true credit card number
# IF not diviable  by 10 it is a fake/false number

# Initial Solution

# class CreditCard
#   def initialize(number)
#     @number = number
#     unless number.to_s.length == 16
#       raise ArgumentError.new("16 digits please")
#     end
#   end

#   def check_card
#     array = @number.to_s.split("").map {|x| x.to_i}
#     new_array = []
#     array.each_index do |x|
#       if x % 2 == 0
#         new_array.push(array[x] * 2)
#       else
#         new_array.push(array[x])
#       end
#     end
#     new_array.map! do |x|
#       if x > 9
#         x.to_s.split("").map {|x| x.to_i}
#       else
#         x
#       end
#     end
#     if new_array.flatten.reduce(:+) % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# my_card = CreditCard.new(1234567890123456)
# my_card.check_card


# Refactored Solution


class CreditCard

  def initialize(number)
    @number = number
    unless number.to_s.length == 16
      raise ArgumentError.new("16 digits please")
    end
  end

  def check_card
    @array = @number.to_s.split("").map(&:to_i)   # create an array with each digit as a separate element
    @new_array = []                              # create empty array into which each element wil be pushed
    @array.each_index do |x|
      if x % 2 == 0
        @new_array.push(@array[x] * 2)           # double the even indices and push to new array
      else
        @new_array.push(@array[x])              # push the odd indices to the new array
      end
    end
    @new_array.map! do |x|
      if x > 9
        x.to_s.split("").map(&:to_i)             # Split the double digit numbers
      else
        x
      end
    end
    if @new_array.flatten.reduce(:+) % 10 == 0  # flatten the 2D array and reduce with addition to get the cumulative sum
      p true
    else
      p false
    end
  end
end

my_card = CreditCard.new(1234567890123456)
my_card.check_card


# Reflection
# What was the most difficult part of this challenge for you and your pair?
  # It had to be splitting the card back and forth to a array/string/intg and back again.
  # It seemed to be so much extra work.
# What new methods did you find to help you when you refactored?
  # &:to_i it is noting crazy but Kyle pull this out his back pocket for a quick trick.
  # (:+) another quick trick for adding the array.
# What concepts or learnings were you able to solidify in this challenge?
  # For myself I need as much help as I can with iteration, adding classes was a good to see
  # iteration in a different aspect.