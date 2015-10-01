# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # if true
  #  puts "What's there to hate about #{thing}?"
#end
 # if false
  #  puts "this is annoying"
  #end
#end

#p cartman_hates('people')

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 182 (it has changed due to fixing errors)
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end of input
# 5. Where is the error in the code?
#  the while was an infinate loop and the method did nothing.
# 6. Why did the interpreter give you this error?
# it was a syntax error missing the end

# --- error -------------------------------------------------------

#def south_park
#end

# 1. What is the line number where the error occurs?
# 41
# 2. What is the type of error message?
# It was an unfined variable or method
# 3. What additional information does the interpreter provide about this type of error?
# It showed that south_park was either a the variable or method
# 4. Where is the error in the code?
#Def was need to define south_park
# 5. Why did the interpreter give you this error?
#All it saw was south_park with could have been a variable but it did not have a value; or a method but it was not defined

# --- error --------------------------------ß-----------------------

#def cartman(jerk)
#end

# 1. What is the line number where the error occurs?
# 57
# 2. What is the type of error message?
# undefine method for 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# The Method is missing it main object (jerk)
# 4. Where is the error in the code?
# There needed to be a 'def' to define the method and object
# 5. Why did the interpreter give you this error?
#It knew that cartman was a method because of the () and need and argument in it and to def.

# --- error -------------------------------------------------------

#def cartmans_phrase(yell)
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 74
# 2. What is the type of error message?
# wrong amount of argument (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# there is a method with no arguments
# 4. Where is the error in the code?
#at the end of the method need()
# 5. Why did the interpreter give you this error?
# it needed an argument to finish the block

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says('A$$ hat')



# 1. What is the line number where the error occurs?
# 96
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#Arguments (0 for 1)
# 4. Where is the error in the code?
#  cartman_says(####)
# 5. Why did the interpreter give you this error?
#Needed to add arument at the end otherwise it would say nothing

# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'he is a skinny buff dude')


# 1. What is the line number where the error occurs?
#116
# 2. What is the type of error message?
# wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
#(1 for 2) meaning we need on more argument since we had 2
# 4. Where is the error in the code?
#At the end where the arguments added
# 5. Why did the interpreter give you this error?
#There is two arguments and it only saw one, we need one more this to work.

# --- error -------------------------------------------------------

 #"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#132
# 2. What is the type of error message?
#string can not be coerced into a Fixum
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
# it starts with the *
# 5. Why did the interpreter give you this error?
# It was trying set a string to a number which will not work.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0.to_f


# 1. What is the line number where the error occurs?
#147
# 2. What is the type of error message?
# '/'
# 3. What additional information does the interpreter provide about this type of error?
# divide by zero (ZeroDivisionError)
# 4. Where is the error in the code?
# the / between the 20 and 0
# 5. Why did the interpreter give you this error?
#You can't do that division for an exact zero

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#163
# 2. What is the type of error message?
#required_relative: can not load such file
# 3. What additional information does the interpreter provide about this type of error?
#/Users/michaeljasinski/phase-0/week-4/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
# the file name will not open
# 5. Why did the interpreter give you this error?
#The file does not exist, so can can not run off of it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#How did you figure out what the issue with the error was?
#Were you able to determine why each error message happened based on the code?
#When you encounter errors in your future code, what process will you follow to help you debug?