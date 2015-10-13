# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# 0. Pseudocode

# INPUT: Positive Integer
# OUTPUT: A postive interger with a comma to sperated integer and returned as string ex: "1,000"

# What are the steps needed to solve the problem?
  # Create a method called separate comma. The method takes a positive integer as argument
  # I want argument to take in positive integers
  # The integer can not be less then 0(negative number) it will fail
  # When the number is less then 4 digits long return the number as a string
  # When the number is greater then 3 digits long return the number as a string place a comma after the first digit.

# 1. Initial Solution

#This what the orginal route I was going and it was becoming a hasle to make a the test come out working. I had to stop and some up with a new plan.
#I also want to point out this little block just below. This is what I based my solution on and it worked with my original attempt. I was fliiping and assing commas into index positions in a array, then turned them back to strings. I dont know how besides an act of god I got it to work.
      #return num.to_s.split('').reverse.insert(3, ',').reverse.join

# def separate_comma(integer)
#created this variable to help shorten the code and convert our integers to stings
  # num = integer.to_s
  # min_num = 1000
  #max_num = 9999999
  #if
#created this to test if number falls with in the range below the use of commas
    #integer = rand(0..999)
#since the number will no need a comma it returns as a string.
      #return num
#From here the numbers need to have a comma within them at the thousnds place
#I broke down the test for all of the respec lengths.
#I want to condense this into one test from 1000 to infinate.
  #elsif
#this takes the number limits from the respc
    #integer = rand(1000..9999)
      #return num.to_s.split('').reverse.insert(3, ',').reverse.join
#no this is where I am getting stuck!!!!
#My idea would be to reverse the numbers to see the last place first.
#Then I would try to add the comma at every 3 spot/index/decimal
#Then I would reverse the array and change it to a string.

  # elsif
  #   integer = rand(10000..99999)
  #     return integer.to_s
  # elsif
  #   integer = rand(100000..999999)
  #     return integer.to_s
  # elsif
  #   integer = rand(1000000..9999999)
  #     return integer.to_s
  # elsif
  #   integer = rand(1000000..9999999)
  #     return integer.to_s
# Working solution/____________________________________________________________

def separate_comma(integer)
#created this variable to help shorten the code and convert our integers to stings
  num = integer.to_s
#Start the if cycle
#This is going to test if the variable length is longer then the integer index of 3. If it is longer it will return the number with a comma inserted from the last number and go backwards 4 spaces.
  if num.length > 3
     num.insert(-4, ',')
# If it is longer than 7 integer spaces it will return the number with a comma inserted from the last number and go backwards 8 spaces. The first test will also insert a comma
  if num.length > 7
     num.insert(-8, ',')
# This will be the same as the ones before and will require an additional comma from the prior two test.
  if num.length > 12
     num.insert(-12, ',')
#I ran the end's right after each test. While they past some test they would fail the rest because they stop running at the first test.
  end
  end
  end
  return num
end

# I am very proud of my one attempt. return num.to_s.split('').reverse.insert(3, ',').reverse.join

# 2. Refactored Solution__________________________________________________________

# I ahd some issues trying to break it down anymore. There is a way to do this with regular expression wich I have no Idea how to use it. So I don't want to screw myself up any worse.

# 3. Reflection___________________________________________________________________
# What was your process for breaking the problem down? What different approaches did you consider? I really took the time to break it down  in pseudocode. Once I did this I saw a pattern. I went to irb and worked on the problem and had it working in the smallest parts and I built off that.

# Was your pseudocode effective in helping you build a successful initial solution? It sounds just like what I did. I understand pseudocode finally.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how? I could not get the refactor going. I found insert and played with it on irb in arrays. I had no idea I could use insert on a string. You can break it down even more but I don't understand regular expression.
# How did you initially iterate through the data structure?I I tried to run in with way to many elsif and it was getting lost in its own code. Also a big mistakes was trying to flip it to an array then to a string over and over.

# Do you feel your refactored solution is more readable than your initial solution? Why? my working copy is a refactor of my non working solution. Yes I think my second copy was much more clear and less hectic.