# U2.W4: Cipher Challenge


# I worked on this challenge with: Joel Yawili



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.





def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") # => defining a function called north_korean_cipher, with a single parameter, coded_message
  decoded_sentence = [] # making a new array
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
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
            
  input.each do |x| # going through each element in input, calling each of them x
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # => 26 false matches 
    cipher.each_key do |y| # calls the block for each key in the hash, each key is called y
      if x == y  # compares every element in input to every key in cipher
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # => they all match at this point, so each gets printed out
        decoded_sentence << cipher[y] ## adding a key to the new decoded_sentence array, but only if it finds a match
        found_match = true #  sets found_match to true if the key matches the element in input
        break  # Why is it breaking here? #  breaks as soon as we find a match. does not look for another one
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # => else if our input equals one of these special characters
        decoded_sentence << " " # append a space to the decoded message
        
        break # if we don't break on the first one, we execute the above statement, and then break here once we find a match
      elsif (0..9).to_a.include?(x) # => creates array from 0 to 9, checks if array includes an element from input
        decoded_sentence << x # adds the element from input to the new decoded message array
        found_match = true
        break
      end 
    end
  end
end
  

  #### MY SOLUTION ####



  def north_korean_cipher(coded_message)
    input = coded_message.split('') # splits the coded message into array of letters
    letters = coded_message.tr('abcdefghijklmnopqrstuvwxyz', 'wxyzabcdefghijklmnopqrstuv') # we know the cipher is shifted 4 spaces, so just replace using tr
    spaces = letters.tr('@#$%^&*', ' ') # use the same method to replace
    spaces # return the fina result
  end





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
#p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
#p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
#p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
#p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
#p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection

# Jeez... This took forever to find a solution. Overall, the biggest thing I learned
# from this challenge was how to use the tr and rotate functions. I also made use of 
# StackOverflow and  the Ruby IRC channel.
 