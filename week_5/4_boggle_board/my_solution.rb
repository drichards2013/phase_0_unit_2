# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

@boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# define get_row function -- takes row as parameter (integer)
# the integer corresponds to the index of the nested array 






# Initial Solution

def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end









# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE



# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution

def get_row(row)
	p @boggle_board[row]
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(1) == ["i", "o", "d", "t"]

# Reflection 



<<<<<<< HEAD
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# define get_col function -- takes column as parameter (integer)
# the integer corresponds to the index of the nested 
# for array in boggle_board, print a(index_entered)

# Initial Solution

def get_col(col)
	new_array = []
	for array in @boggle_board
		new_array << array[col] 
	end
	p new_array
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
p get_col(1) == ['r', 'o', 'c', 'a']


# Reflection 

# I didn't refactor my solutions because every line serves a purpose. That said, I enjoyed completing this challenge. It took was fun.
=======
>>>>>>> upstream/master
