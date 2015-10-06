# Concatenate Two Arrays

# I worked on this challenge [by myself ].

#INPUT: Takes two arrays as arugments
#OUTPUT: Returns a single string
# in all instants the array will combined into one bigger array
#the method is taking two arguments arg1 and arg2


#### THis was my first try below
# def array_concat(array_1, array_2)
#   x= nil
#     if  array_1 >= x
      #do array_1 + array_2
#     elsif array_2 == x
      # do array_1 + array_2

  #end
#end

#WORKING______________________________

def array_concat(array_1, array_2)

   array_1 + array_2

end

# add arg1 + arg2
#REFACTOR_____________________________
def array_concat(array_1, array_2)
     array_1.concat (array_2)
 end