

# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# find each other number and double

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(number)
		@number = number.to_s.split('')
		if number.to_s.length != 16
			raise ArgumentError.new("Number ain't 16 digits, brah.")
		end
	end

	 def check_card

		evens = @number.values_at(* @number.each_index.select {|i| i.even?})
		odds = @number.values_at(* @number.each_index.select {|i| i.odd?})
		
		doubled_evens = evens.map {|even| even.to_i * 2} # double each even-indexed number

		doubled_evens = doubled_evens.map {|element| element.to_s} # => changing doubled evens array to a string so that we can perform split on them

		separated_doubles =  doubled_evens.join('').split('')

		summed_evens = separated_doubles.inject {|base, element| base.to_i + element.to_i} #returns the sum of all the doubled even-indexed numbers
		
		untouched_integers = odds.map {|element| element.to_i}
		final_array = untouched_integers << summed_evens # appending the summed evens to the untouched ones
		
		final_answer = final_array.inject {|base, element| base + element} # summing everything up


		if final_answer % 10 == 0
			true
		else
			false
		end
	 end
end






# 4. Refactored Solution

# class CreditCard
# 	def initialize(number)
# 		@number = number.to_s.split('')
# 		if number.to_s.length != 16
# 			raise ArgumentError.new("Number ain't 16 digits, brah.")
# 		end
# 	end

# 	 def check_card
# 		evens = @number.values_at(* @number.each_index.select {|i| i.even?})
# 		odds = @number.values_at(* @number.each_index.select {|i| i.odd?}).map {|element| element.to_i}
		
# 		doubled_evens = evens.map {|even| even.to_i * 2}.map {|element| element.to_s} # double each even-indexed number
# 		summed_evens =  doubled_evens.join('').split('').inject {|base, element| base.to_i + element.to_i} 
# 		final_array = odds << summed_evens # appending the summed evens to the untouched ones
# 		final_answer = final_array.inject(:+) # summing everything up

# 		if final_answer % 10 == 0
# 			true
# 		else
# 			false
# 		end
# 	 end
# end


# 1. DRIVER TESTS GO BELOW THIS LINE

c = CreditCard.new(4563960122001999)
d = CreditCard.new(4563960122001991)
p c.check_card == true
p d.check_card == false





# 5. Reflection

# This challenge was awesome. I love performing operations on arrays -- it's just great.
# Even the refactoring was fun!
# Recently, I've started to feel myself become a bit unmotivated.
# This challenge knocked me back into position. 





