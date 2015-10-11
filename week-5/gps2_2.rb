# Create a new list: make a new hash for the list
# Define a method that takes information in and creates a g-list
# The keys with be the product and the values is the quanaties

# Add and item to the list: we will add a new key and value to the hash from the prev method
# Remove and item for the list: we will take an item out of the list.
# Update quanties: We will update the values to a new amount
# Print the list: we will print the list of all the item in the hash.


# INTITIAL

def g_list
  Hash.new()
end

#ADD ITEM
def add(product, quant, list)
  list[product] = quant
end
# REMOVE
def remove(product, list)
  list.delete(product)
end
#UPDATE
def update(product, quant, list)
  list[product] += quant
end
#Print
def print_list(list)
  list.each{ |key, value| puts "#{key} : #{value}" }
end

# TESTS
p newlist = g_list
add("lemonade", 2, newlist)
add("tomato", 3, newlist)
add("onion", 1, newlist)
add("ice cream", 4, newlist)
p newlist
remove("lemonade", newlist)
p newlist
update("ice cream", -3, newlist )
p newlist
print_list(newlist)

# REFACTORED
def g_list
  Hash.new()
end

#ADD ITEM
def add(product, quant, list)
  list[product] = quant
end

def remove(product, list)
  list.delete(product)
end

def update(product, quant, list)
  list[product] += quant
end

def print_list(list)
  list.each{ |product, quant| puts "#{product} : #{quant}" }
end

#Reflection______________________________________________________________________________________
# What did you learn about pseudocode from working on this challenge? I learned that them more you break it up the better. I was working with my guide so we did this a bit different. I should have done more pseudocode.
# What are the tradeoffs of using Arrays and Hashes for this challenge? We need to manupulate the the hash keys and values to get the correct list.
# What does a method return? It returns what is in  the scope of the arguments.
# What kind of things can you pass into methods as arguments? almost anything strings/integers array hash
# How can you pass information between methods? You could use the same arguments that have the same meaning throught the code and are altered by what you are calling.
# What concepts were solidified in this challenge, and what concepts are still confusing? I am cofused about this I think. I had a Will Ferrell moment and blacked out.