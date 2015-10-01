# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below


#if num is 90% = A
#if num is 89%-80% = B
#if num is 79%-70% = C
#if num is 69%-60% = D
#if num is 59% = F

def get_grade(num)
  if num >= 90
    p 'A'
  elsif num >= 80 && num <= 89
    p 'B'
  elsif num >= 70 && num <=79
    p 'C'
  elsif num >= 60 && num <=69
    p 'D'
  else num <= 59
    p 'F'
  end
end