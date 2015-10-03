# Simple Substrings

# I worked on this challenge [by myself, with: ].
#Jeremy P

# Your Solution Below

# creat a method called welcome
# acceptst an adress as a string
# returns welcome to cal if address has ca
# or returns you should move to ca otherwise



def welcome(sunshine)
#   if state == sunshine
#     p sunshine
#   elsif state == other
#     p other
  if sunshine.include?("CA")
     p "Welcome to California"
  else
    p "You should move to California"

  end

end