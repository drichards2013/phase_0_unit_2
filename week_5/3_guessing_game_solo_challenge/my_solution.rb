# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, : ].

# 2. Pseudocode

# until try == @answer, solved? == false



# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(try)
  	@try = try
  	if try > @answer
  		:high
  	elsif try < @answer
  		:low
  	else
  		:correct
  	end
  end

  def solved?
  	if @try == @answer
  		true
  	else
  		false
  	end
  end
end




# 4. Refactored Solution


# I've come to the conclusion that I cannot currently refactor this code with my current knowledge. I believe the script's
# variables are named semantically,  use the proper statements, and performs the correct initializations.



# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(20)

p game.guess(100) == :high
p game.guess(19) == :low
p game.guess(20) == :correct



# 5. Reflection 

# Was a fun challenge. Really got to appreciate Ruby's implicit return.
# I'm also finally getting the hang of driver test code.
