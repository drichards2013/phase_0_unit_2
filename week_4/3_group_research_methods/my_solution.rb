# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
	new_array = []
  for pet in source
  	if pet.to_s.include?(thing_to_find)
  		 new_array << pet
  	end
  end
  p new_array
end

def my_hash_finding_method(source, thing_to_find)

	p source.select {|name, age| age.to_s.include?(thing_to_find.to_s)}.keys
	
end

# Identify and describe the ruby method you implemented. 
# I decided to work with the include? method. I like the method because its name is descriptive
# of its function. It checks if 
# 



################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]


# Reflect!
# 
# 
# 
# 
# 