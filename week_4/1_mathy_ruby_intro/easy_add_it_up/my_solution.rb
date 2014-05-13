# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

## write total method that takes array of numbers as input
## add all elements in array
## return sum

###########

## define sentence_maker method that takes one parameter
## join each word with a space
## capitalize first letter of sentence
## append a period




# 2. Initial Solution

def total(array)
	array.inject{|sum,x| sum + x}
end

def sentence_maker(array)
	 array.join(' ').capitalize + '.'
end


# 3. Refactored Solution

def total(array)
	array.inject{|base, element| base + element } ## made my variables more descriptive. sum and x don't do much for the reader
end

# 4. Reflection 

## Was a fun challenge to work on. I enjoyed learning how to use the inject and join methods.


