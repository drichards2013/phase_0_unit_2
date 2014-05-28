# U2.W6: PezDispenser Class from User Stories




# I worked on this challenge [by myself, : ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# creation is taken care of with initialization
# flavors.size for count
# 




# 3. Initial Solution

def assert
	raise 'Assertion failed!' unless yield
end



class PezDispenser
 
	def initialize(flavors)
		@flavors = flavors
		@next_pez = @flavors.sample
	end

	def pez_count
		@flavors.size
	end

	def see_all_pez
		p @flavors
	end

	def add_pez(flavor)
		@flavors << flavor
	end

	def get_pez
		@next_pez
	end
 
end
 


# 4. Refactored Solution

class PezDispenser
 
	def initialize(flavors)
		@flavors = flavors
		@next_pez = @flavors.sample
	end

	def pez_count
		@flavors.size
	end

	def see_all_pez
		p @flavors
	end

	def add_pez(flavor)
		@flavors << flavor
	end

	def get_pez
		@flavors.shift
	end
 
end





# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


## some driver code I thought would be interesting to add ##


assert { super_mario.class == PezDispenser}
assert {flavors.include?('cherry') }
assert {flavors.include? 'peppermint'} # refactored line 87

for flavor in flavors
	assert {flavors.include? flavor}
end # Not sure if this is redundant, or if it serves the purpose of checking if the string is included in the flavors array
# With lines 90-92, I feel like I'm doing something akin to : 

# nums = [1,2,3]
# for num in nums
# 	assert {nums.include? num}
# end

# Haha. What's your take on this?



# 5. Reflection 

# Really fun challenge! Most fun one yet! It was awesome to run the program and fix
# each error. I realized that in my initial solution, I did not remove a pez with 
# get_pez, so I changed it to shift. 




