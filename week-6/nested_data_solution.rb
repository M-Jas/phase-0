# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array.at(1).at(1).at(2).at(0)


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20, 25, 30], 35]

# x = 0

# while x < number_array.length
#   if number_array[x].is_a? Integer
#     number_array[x] += 5
#   elsif number_array[x].is_a? Array
#     number_array[x] = number_array[x].map {|sub| sub += 5}
#   end
#   x += 1
# end

number_array = number_array.map do |element|
  if element.is_a? Integer
    element + 5
  elsif element.is_a? Array
    element.map {|sub| sub + 5}
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#Reflection
# What are some general rules you can apply to nested arrays? You can iterate over them like any other array. They can
  #mix elements and hashes among the arrays.

# What are some ways you can iterate over nested arrays? The use of .map is helpful for returning an array. .is_a?
# help test the elements and add to the array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?.map we wanted to make the new array destructive and this helped
  #beacuse we set the old array equal to the new one.