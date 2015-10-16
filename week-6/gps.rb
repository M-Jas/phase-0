# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  if !menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#   Below I think we could try to create methods for def serving_size
# The arguments for the new method(serving_size, serving_size_mod)
# I am creating these because I think I could use them the manipulate the New Feature
  serving_size = menu.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size
  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    menu.each do |key, value|
      puts key
    #leftover_item = serving_size/order_quantity will give us how much we have leftover_item and then we can use that value to calulate what item we can serve.
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: #{key}"
     #New Feature should figure out what closest value is return that item to make additionally
  end
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection