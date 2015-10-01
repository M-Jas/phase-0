# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

#create method leap_year?
#takes integer (year)
#return true if year = leap_year
#return false if otherwise
#leap_year / 4
#leap_year  / 100 && 400

def leap_year?(int)
  if int%4 == 0 && int%100 == 0 && int%400 == 0
    p true
  elsif int%4 == 0
    p true
  elsif int%100 == 0 && int%400 == 0
    p true
  else
    p false
  end
end
