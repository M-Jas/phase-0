# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Method 1 call
  # The letters we are going to need a sample letter from(bingo)
  #- The numbers will be random number within the range (1-99)

# Method 2 Check the called column for the number called.
  #look to see if the number given is in column
  #This should go to the corsponding letter and look if number is there.

# If the number is in the column, replace with an 'x'
  #If the bord has the number we will replace it with an x
  #We are going to have to look over the  entire array to find the called number

# Display a column to the console
  #We will print out the column to the console stacked on top of one another.

# Display the board to the console (prettily)
  #Print the new to the console so it lays out like a board.. remove the brackets.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board

  end

end

class Call

  def initialize(board_letter, board_number)
    @letter = board_letter
    @number = board_number
  end
  def next_letter
     @letter.sample
  end
  def next_number
     @number
   end

end

# class Check
#   def initialize
#     @bingo_board = BingoBoard.new


#____________________________________________________________
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board =  [[47, 44, 71, 8, 88],
          [22, 69, 75, 65, 73],
          [83, 85, 97, 89, 57],
          [25, 31, 96, 68, 51],
          [75, 70, 54, 80, 83]]

board_letter = ['B', 'I', 'N', 'G', 'O']
board_number = rand(1..99)

new_game = BingoBoard.new(board)
 p new_game.
#this is going to select the next letter for the game
new_ball = Call.new(board_letter, board_number)
p new_ball.next_letter
p new_ball.next_number




#Reflection
