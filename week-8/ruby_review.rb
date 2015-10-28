# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  #assign the variable to the arg. .downcase = lower case everything .split divide string into substrings in an array the part in parameters will split at the white space in a string.
  input = coded_message.downcase.split("")
  #This is creating a empty array to collect data
  decoded_sentence = []
  # This is technically a shift of four letters...Can you think of a way to automate this?
    #We could take an array with the alpahabet and take every four index and push that to a new array.
    #Then we could take the old array and the new array and .zip them together.
  # Is a hash the best data structure for this problem? What are the pros and cons of hashes?
    # The has might be the best option. We have a key and a set value. Regadless if this is the best structure,
    # the keys and values are not east to remember.
  cipher = {"e" => "a",
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
  # What is #each doing here? We are going to iterate over each input(coded mesg) and spliting into a string.
  input.each do |x|
  # Why would this be assigned to false from the outset? What happens when it's true? If this ture right away it is going to stop.
    found_match = false
  # Look in to the hash and take the key and do what y is about to do.
    cipher.each_key do |y|
    # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
    # This is going to take the key from the hash and see if it is equal to the the variable x(wich is the input
    # varliable) X is really the argument that is lower case and split at the white space.
      if x == y
    #If they are equal to each other y(the key) will be pushed into a new array.
        decoded_sentence << cipher[y]
    # ?????
        found_match = true
    #This is going to stop the loop beacuse?????
        break  # Why is it breaking here?
    #What the heck is this doing? If nothing is met above x is going to check if it is equal to any of these.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
    # If any of these match x we will put it into the new array.
        decoded_sentence << " "
        found_match = true
        break
    #This is going to check if there is any integer in the data. .to_a is changing the range to an array.
      elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for? IF there is anything missed and push it into the array
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning? This is going to return the string into a normal looking message.
end

# Your Refactored Solution





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!