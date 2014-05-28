# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end
 
  def create_word(board, *coords)
  	  coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  def get_row(row)
  	p @board[row]
  end

  def get_col(col)
  	new_array = []
  	for array in @board
  		new_array << array[col] 
  	end
  	p new_array
  end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)


	# p boggle_board.get_col(0).join('')
	# p boggle_board.get_col(1).join('')
	# p boggle_board.get_col(2).join('')
	# p boggle_board.get_col(3).join('')


	# p boggle_board.get_row(0).join('')
	# p boggle_board.get_row(1).join('')
	# p boggle_board.get_row(2).join('')
	# p boggle_board.get_row(3).join('')

### TOTAL OUTPUT ###

# ["b", "i", "e", "t"]
# "biet"
# ["r", "o", "c", "a"]
# "roca"
# ["a", "d", "l", "k"]
# "adlk"
# ["e", "t", "r", "e"]
# "etre"
# ["b", "r", "a", "e"]
# "brae"
# ["i", "o", "d", "t"]
# "iodt"
# ["e", "c", "l", "r"]
# "eclr"
# ["t", "a", "k", "e"]
# "take"

# 4. Refactored Solution

# col = 0

# 1.upto dice_grid.size do
# 	p boggle_board.get_col(col).join('')
# 	col += 1
# end

# row = 0

# 1.upto 4 do
# 	p boggle_board.get_row(row).join('')
# 	row += 1
# end




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

#p boggle_board.create_word([0,0]) 



# implement tests for each of the methods here:

p boggle_board.get_row(0) == ["b", "r", "a", "e"]
p boggle_board.get_col(0) == ["b", "i", "e", "t"]


# 5. Reflection 

# Refactoring this challenge was fun. I'm getting better at it. 
# I think I've also got the hang of driver test code.
# I can't get coordinates to work for some reason. We were given a function already.
# Is that it? I wrote driver test code for it, and it returns false. In what form
# should the coordinates be taken? An array? The instructions for this challenge, 
# in my opinion, could have been clearer in regard to this part of the challenge.