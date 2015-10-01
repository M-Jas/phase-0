# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below

#create method called make_address
#accepts street, city, state, zip as parameters


=begin
def make_address ("633 Folsom St.", "San Francisco", "CA", "94107")
    puts street
    puts city
    puts state + zip.to_s

  end

  p make_address
end
=end

def make_address (street, city, state, zip)

 p "You live at #{street}, in the beautiful city of #{city}, #{state}. Your zip is #{zip}."

end

puts make_address("633 Folsom St.", "San Francisco", "CA", "94107")
