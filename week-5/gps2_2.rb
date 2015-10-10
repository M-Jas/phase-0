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

def remove(product, list)
  list.delete(product)
end

def update(product, quant, list)
  list[product] += quant
end

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