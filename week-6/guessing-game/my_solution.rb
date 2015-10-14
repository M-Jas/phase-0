# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode________________________________________________________________________________________

# Input:guess takes an integer
# Output:ansers to the questions as symbols
# Steps:
#1- Initialize answer
#2- Create a method for guess and solved
#3- guess will test three things A)if guess is larger than answer B) guess is equal to answer C) if it is lower than answer
#4- These will return A)a symbol high B)a symbol equal C)a symbol low
#5- Solved will test if true or false. Returns true if guess correct, false else wise

# Initial Solution_____________________________________________________________________________________

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else @guess == @answer
      return :correct
    end
  end
  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end


# Refactored Solution_________________________________________________________________________________
This answer is very dry as it is.





# Reflection