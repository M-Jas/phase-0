# Research Methods

# I spent [2.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
# Person 3
# INPUT: Takes in an Array
# OUTPUT: alphabetiezed array
def my_array_sorting_method(source)
  source.sort_by {|a| a.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|names, values| values}
end


# Release 1: Identify and describe the Ruby method you implemented. #We decided to use the sort_by method to solve the code.

#We decided to use the sort_by method to solve the code.
 # sort_by is a non-destructive method that does not change the -existing data. Also we could use sort_by because it sorts objects that have different class with in arrays or hashes, such as strings and ints.

 #I researched by using "Rubyist" then I would back my findings with info from ruby docs


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

#I learned that sometimes the solutions really is that easy. I spent an hour just researching my method because I did not think I could solve it that quick and eazy.

#Telling people about it is always easier said then done, but if you keep it breif and simple it will go futher.
