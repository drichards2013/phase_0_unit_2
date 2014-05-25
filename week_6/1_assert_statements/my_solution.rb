# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }


# 2. Pseudocode what happens when the code above runs

# define assert function
# raise an error unless whatever's in the block is true

# 3. Copy your selected challenge here

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
# north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
# p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
# p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
# p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
# p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
# p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")



# 4. Convert your driver test code from that challenge into Assert Statements

message1 = 'i want a coke!'
assert { message1 == north_korean_cipher('m^aerx%e&gsoi!')}

message2 = 'our people eat the most delicious and nutritious foods from our 1000000 profitable farms.'
assert {message2 == north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")}

message3 = "our nukes are held together by grape-flavored toffee. don't tell the us!"
assert {message3 == north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")}

message4 = "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
assert {message4 == north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")}

message5 = "next stop: south korea, then japan, then the world!"
assert {message5 == north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")}

message6 = "can somebody just get me 10000 bags of cool ranch doritos?"
assert {message6 == north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")}

# 5. Reflection

# Learned about assert. Had to do some research, though. There's a question on SO
# addressing this very challenge, so that helped very much with figuring out 
# what the assert-yield combo does. 



