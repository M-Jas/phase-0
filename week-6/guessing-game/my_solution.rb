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





# Reflection___________________________________________________________________________________________

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# When should you use instance variables? What do they do for you? Instance variables are objects of the
  #class and as the variable. They can be used troughout the class as a variable to hold a value.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? Here we are going to use if statements to addres if the person has guessed correctly.
  #I had issues with the method for solved because in guess I had @guess == solved. just a small flow
  # error. It was asking if guess was solved, but what is the answer? I needed to bring that down from
  # guess

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  # We are assigning a object id which which is imutable and cant be changed.