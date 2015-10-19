# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [12] hours on this challenge.

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
    @bingo_letter = ['B', 'I', 'N', 'G', 'O']
  end
  def next_letter
    p @bingo_letter.sample
  end
  def next_number
    p @next_number = rand(1..99)
  end
  def bingo_ball
    @aaa = next_letter
    @bbb = next_number
    p "The next ball is #{@aaa}-#{@bbb}"
  end
#Display for Users Bingo Card_________________________________________________
  def user_card_letters
     p @bingo_letter
  end
  def user_card_numbers
    @bingo_board.map{|index| p index}
  end
#Check the board______________________________________________________________
#Create a method Check the card
#method will test if letter and number match in the same column
# does card have the letter called... it better have
# if the card has letter
# then check if number falls under the column by iterating over specific index

  def finder
    #we need to check the value of the bingo ball matches our bingo board
    # The numbers are nested inside another array. We have to go a few layers deep
    #First:  go over each array
    #Second: We need to go each index/number and letter to match the ball with board
    #we will ask if the bingo letters are equal to the current bingo ball letter
    # we will ask if the bingo board is equal to the current bingo ball number
      # @bingo_board.collect! do |i|
      #   if i.include?(@bingo_ball)
      #     i.collect!.with_index {|i| i == @bingo_ball ? "X" : i}
    @bingo_board.each do |x|
      x.each_with_index do |i, n|
        if i == @bingo_letter.index(@aaa) && n == @bbb
        #test's to see if the numbers fall into the index for the letter.
        #if true replace the occurance that index/number.
          @bingo_board.map!{|n| n == @bbb ? "x" : x}
        # I can not get the "X" to replace the number on the board.
        # I tired everything I could for map! to change the board to be destructive and show my "X"
        # I also tried a different route by testing the ball as a whole
        # I also tired to put the colum into an empty array and push over the values, then place my "x" push it back
        end
      end
    end
     # @bingo_board
  end
end
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE____________________________
board =  [[47, 44, 71, 8, 88],
          [22, 69, 75, 65, 73],
          [83, 85, 97, 89, 57],
          [25, 31, 96, 68, 51],
          [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# p new_game.next_letter
# p new_game.next_number
new_game.bingo_ball
new_game.finder
new_game.user_card_letters
new_game.user_card_numbers
p "I did not get BINGO"

#Reflection___________________________________________________________________

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   Pseudocoding the nested array was tricky beacuse I did not know how to type out what I wanted it to do.
#   My pseudocoding has made massive strides, but it can always be better.
# What are the benefits of using a class for this challenge?
#   They give us the opportunity to use variables outside of the local scope so we can keep using the same ones without creating new methods each time.
# How can you access coordinates in a nested array?
#   .at() mething to just call them. With iterating you will have to peel a layors back with iterating
# What methods did you use to access and modify the array?
#   each_with_index. after the first layor I needed to get test if the number was at the same index as the letters in the column
# How did you determine what should be an instance variable versus a local variable? Local variables were going to help me more in the long run and make my code shorter.
# What do you feel is most improved in your refactored solution? I did not have a refactor solution beacsue I could not get my inital up and running.