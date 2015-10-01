# I worked on this challenge [by myself, with: ].


# Your Solution Below

# create method valid_triangle
#all input will be + num
#if a + b > c
# if a + c > b
# if b + c > a
# equal triangle
# if else negative false


def valid_triangle?(a, b, c)
  if a + b > c && b + c > a && a + c > b
    p true
  else
    p false
  end
end