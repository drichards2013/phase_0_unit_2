# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, : ].

# 2. Pseudocode

# Input:  title, topic, date, thesis_statement, pronoun

## phrases to use: 
## 'was an important person in '
## ' did a lot'
## ' i want to learn more about '
## input thesis
## 'topic's contribution is important '





# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statement, pronoun)
	tagline1 = ' was an important person in '
	tagline2 = 'He did a lot. I want to learn more about'
	puts title
	'\n'
	'\n'
	puts topic + tagline1 + date.to_s + '. ' + tagline2 + ' ' + pronoun + '. ' + thesis_statement + " #{topic}'s contribution is important."
end





# 4. Refactored Solution

def essay_writer(title, topic, date, thesis_statement, pronoun)
	puts "#{title} \n \n#{topic} was an important peron in #{date}. #{pronoun.capitalize} did a lot. #{thesis_statement} #{topic}'s contribution is important.' "
end






# 1. DRIVER TESTS GO BELOW THIS LINE

essay_writer("Dylan Richards and his Awesomeness", "Dylan Richards", 2014, "Dylan Richards is awesome.", 'he')





# 5. Reflection

## Another fun challenge. It was nice to make use of string interpolation. I didn't really learn anything from this exercise, however.
## I still don't understand driver test code. Why aren't we actually using rspec yet?


