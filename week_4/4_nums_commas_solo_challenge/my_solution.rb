# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

## def separate_comma method with integer as argument
## use regex to separate integer with commas


## gsub(pattern, replacement)

# 2. Initial Solution

def separate_comma(number)
	puts number.to_s.reverse.scan(/.{3}|.+/).join(',').reverse
	## . match any character
	## {3} exactly 3
	## . any character
	## and any characters thereafter
	## 
	## 
end




# 3. Refactored Solution

def separate_comma(number)
	puts number.to_s.scan(/.{1,3}/).join(',')
	## didn't need to reverse twice
	## this regular experssion, I believe, makes it clearer, that the number is being split into groups of
	## three before being joined by commas
	## . match any character every 1-3 spots, then join them with a comma
end

# 4. Reflection 

## This is the first exercise that thoroughly challenged me. 
## I worked on it for an hour, bought membership on Tuts+ to learn about RegEx, and meditated
## before I was able to come up with a solution. I am still very fuzzy in the RegEx department
## and would like to know of a better resource to learn about them and how to use them in Ruby.
## The tests fail, but I get the desired output. Not sure why they're failing
## Phew!