# Numbers to English Words
# I worked on this challenge [Alone].
# This challenge took me [3] hours.


# Pseudocode_____________________________________________________
# INPUT: Numbers
# OUTPUT: String/English eqluivalent of the number
#Create a Program/Method that takes an interger as an argument
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
  elsif num == 20 || num == 30 || num == 40 || num == 50 || num == 60 || num == 70 || num == 80 || num == 90
     index = num.to_s.split(//).shift.to_i
     num_string = tens[index - 1]
  elsif num < 10
     index = num.to_s.split(//).shift.to_i
     num_string = ones[index - 1]
  elsif num > 20
    index = num.to_s.split(//)
      first_number = tens[index[0].to_i - 1]
      second_number = ones[index[1].to_i - 1]
      num_string = first_number + "-" + second_number
  end
end

p english_number(20)
p english_number(33)
p english_number(8)
p english_number(78)
p english_number(60)
p english_number(4)

# Refactored Solution
