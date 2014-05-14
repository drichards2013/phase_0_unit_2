# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with [ Joel Yawili  ].

# 1. Pseudocode

## get into the array class
## define pad method that takes 2 paramaters. one is mandatory, the second is optional. 
## if the second is absent, return nil for (first) times
## do the same for destructive method


# 2. Initial Solution

class Array
  def pad(padding, expression=nil)
  	padding.times do
  		@array = self << expression
  	end
  	print @array
  end

  def pad!(padding, expression=nil)
  	padding.times do
  	  self << expression
  	end
  	print self
  end
end



# 3. Refactored Solution


class Array
  def pad(padding, expression=nil) ## expression defaults to nil
  	self.size.upto(padding - 1) do
  		self << expression ## append the expression to the end of the array 'padding' number of times
  	end
  	print self
  end

  def pad!(padding, expression=nil)
  	self.size.tupto(padding-1) do
  	  self << expression
  	end
  	print self
  end
end



# 4. Reflection 

## This was a fun challenge. I've never made use of optional arguments that default to a certain values, edited a Ruby class, or
## used 'self' in such a way.