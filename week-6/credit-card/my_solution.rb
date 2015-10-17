# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [by with: Kyle Smith ].
# I spent [] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(number)
    @number = number
    unless number.to_s.length == 16
      raise ArgumentError.new("16 digits please")
    end
  end

  def check_card
    array = @number.to_s.split("").map {|x| x.to_i}
    new_array = []
    array.each_index do |x|
      if x % 2 == 0
        new_array.push(array[x] * 2)
      else
        new_array.push(array[x])
      end
    end
    new_array.map! do |x|
      if x > 9
        x.to_s.split("").map {|x| x.to_i}
      else
        x
      end
    end
    if new_array.flatten.reduce(:+) % 10 == 0
      return true
    else
      return false
    end
  end
end

my_card = CreditCard.new(1234567890123456)
my_card.check_card


# Refactored Solution








# Reflection