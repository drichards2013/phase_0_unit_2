# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
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



# Refactored Solution

class CreditCard
	def initialize(number)
		@number = number.to_s.split('')
		if number.to_s.length != 16
			raise ArgumentError.new("Number ain't 16 digits, brah.")
		end
	end

	 def check_card
		evens = @number.values_at(* @number.each_index.select {|i| i.even?})
		odds = @number.values_at(* @number.each_index.select {|i| i.odd?}).map {|element| element.to_i}

		doubled_evens = evens.map {|even| even.to_i * 2}.map {|element| element.to_s} # double each even-indexed number
		summed_evens =  doubled_evens.join('').split('').inject {|base, element| base.to_i + element.to_i} 
		final_array = odds << summed_evens # appending the summed evens to the untouched ones
		final_answer = final_array.inject(:+) # summing everything up



		final_answer % 10 == 0 ? true : false
	 end
end




# DRIVER TESTS GO BELOW THIS LINE


c = CreditCard.new(4563960122001999)
d = CreditCard.new(4563960122001991)
p c.check_card == true
p d.check_card == false



# Reflection 

# As suggested, I looked into the ternary operator, and Refactored accordingly

