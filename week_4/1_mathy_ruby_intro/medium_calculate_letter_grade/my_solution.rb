# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, : ].

# 1. Pseudocode

## create get_grade method -- accepts one array
## calculate average
## return grade


# 2. Initial Solution

def get_grade(grades)
	average = (grades.inject{|base, grade| base + grade}) / grades.length

	case
	when average >= 90
		'A'
	when average >= 80
		'B'
	when average >= 70
		'C'
	when average >= 65
		'D'
	when average < 65
		'F'
	end
end

# 3. Refactored Solution

def get_grade(grades)
	average = grades.reduce(:+) / grades.length

	case
	when average >= 90
		'A'
	when average >= 80
		'B'
	when average >= 70
		'C'
	when average >= 65
		'D'
	when average < 65
		'F'
	end
end
# 4. Reflection 

## I was so happy that I got to use inject again! Also learned about the reduce method; it made summing the array much easier.