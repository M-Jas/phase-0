# In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

#Pseudocode:
# Create a method that will make acc. groups from a list of names.
# Try to get everyone in to a group of 3 to 5 People from the argument copperheads.
#  Print out the new groups of 5
# INPUT: Takes in the data from an array.
# OUTPUT: Prints out new groups of people for their acc. group assignment.

# Initial Solution_____________________________________________________________

copperheads = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

def acc_group(copperheads)
  copperheads.each_slice(5){|slice| p slice}
end

p acc_group(copperheads)

# Refactor Solution_____________________________________________________________
# The solution I used in the above problem is a great example of a refractor solution. I figure I could use this beacuse it was in part of our reading. I did not know it could solve the entire solution in one line.


# Reflection____________________________________________________________________

# What was the most interesting and most difficult part of this challenge?
#   I think is was crazy this I figured this out from the Rubyist. This book is hit or miss but Ch 10 was helpful with the challenges this week. After I did this one I was not able to do a full iteration. My brain did not want to think of any other answers.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#   This exercise was not the best example of it beacuse I had a hunch on how to solve the problem.
# Was your approach for automating this task a good solution? What could have made it even better?
#   I wish I could have broke it down bit by bit to solve the long way.
# What data structure did you decide to store the accountability groups in and why? Array, because there is only index spots for the mates. It was easier to interate over that.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? each_slice and each_cons. each_slice is going to be my go to for bunching groups of people. I am not sure why I would use each_cons, beacuse the output is some what repeative.