# Numbers to English Words


# I worked on this challenge [Alone].
# This challenge took me [#] hours.


# Pseudocode_____________________________________________________
# INPUT: Numbers
# OUTPUT: String/English eqluivalent of the number
#Create a Program/Method that takes an interger as an argument
#
#
#
#

# Initial Solution
 def english_number(num)

   ones = ['one', 'two', 'three', 'four', 'five',  'six', 'seven', 'eight', 'nine']

   tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

   teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


  num_string = ''
   if num == 100
     num = "OneHundred"
  elsif num > 10 && num < 20
     index = num.to_s.split(//).pop.to_i
     num_string = teens[index - 1]
  elsif num >= 20
     index = num.to_s.split(//).shift.to_i
     num_string = tens[index - 1]
  elsif num < 10
     index = num.to_s.split(//).shift.to_i
     num_string = ones[index - 1]
   end

 end


 p english_number(30)


#   num_string = ''
#   left = num
#   write = left/100
#   left = left - write * 100
#   if write > 0
#     return "one hundred"
#   end

#    write = left/10
#    left = left - write *10
#    if write > 0
#      if write == 1 && left > 0
#        num_string = teens[left -1]

#      elsif left == 0
#      num_string = tens[write -1]

#      else
#        write == left
#        left == 0
#         if write > 0
#           num_string = ones[write -1]
#         end
#      end


# Refactored Solution

# Reflection