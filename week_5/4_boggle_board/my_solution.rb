# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def get_row(board,row)
	board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0] == get_row(boggle_board, 0)
puts boggle_board[1] == get_row(boggle_board, 1)
puts boggle_board[2] == get_row(boggle_board, 2)


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_col(board,col)
	board.map{ |x| x[col]}
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts %W{b i e t} == get_col(boggle_board, 0)
puts %W{r o c a} == get_col(boggle_board, 1)
puts %W{e t r e} == get_col(boggle_board, 3)


# Reflection
# Simple nested arrays, very useful in board games where you want to lay down rows and columns,
# the board is most constructed by the use of 2 for loops, one creating the row and the other column
# Example
# for (int i=;i<=10;i++){
#	for(int j=0;j<=10;j++){
#	print "x"
#   }
#}



