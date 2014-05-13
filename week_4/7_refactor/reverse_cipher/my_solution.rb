# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, : ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a ## array with each alphabet letter string as element
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] ## creates hash, alphabet as keys, alphabet.rotate(4) for values
    spaces = ["@", "#", "$", "%", "^", "&", "*"] 
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element) ## if there's an element,
        encoded_sentence << cipher[element] ## swap it for this one
      elsif element == ' ' ## otherwise if there's a space,
        encoded_sentence << spaces.sample ## random element in array
      end
     end
    
    return encoded_sentence.join
end




# Questions:
# 1. What is the .to_a method doing? Turns the object into an array 
# 2. How does the rotate method work? What does it work on? Picture a clock. Calling clock.rotate will shift all the numbers one space counter-clockwise. Does the same thing for arrays.
# 3. What is `each_char` doing? Allows us to perform an operation once for every character in a particular string
# 4. What does `sample` do? Returns a random element from an array
# 5. Are there any other methods you want to understand better? Hash[]
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? The original code looks worse than my refactored solution.
# 7. Is this good code? What makes it good? What makes it bad? My code is good because it does not repeat itself or use unnecessary methods. Variables are named semantically.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

## I enjoyed this exercise because it introduced me to methods I've never used before. I also got more practice with the 
## process of changing an array and storing its values in another.