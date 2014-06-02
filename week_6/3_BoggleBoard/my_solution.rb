# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
	def initialize(grid)
		@grid = grid
	end
	def create_word(*coords)
		coords.map { |coord|
			@grid[coord.first][coord.last]
		}.join("")
	end
	def get_row(row)
		@grid[row]
	end

	def get_col(col)
		@grid.map {|x| x[col]}
	end
end


dice_grid = [["b", "r", "a", "e"],
			["i", "o", "d", "t"],
			["e", "c", "l", "r"],
			["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

p boggle_board.get_row(0).join == "brae"
p boggle_board.get_row(1).join == "iodt"
p boggle_board.get_row(2).join == "eclr"
p boggle_board.get_row(3).join == "take"
p boggle_board.get_col(0).join == "biet"
p boggle_board.get_col(1).join == "roca"
p boggle_board.get_col(2).join == "adlk"
p boggle_board.get_col(3).join == "etre"

p boggle_board.create_word([3,2])  == "k"
p boggle_board.create_word([0,2]) == "a"
p boggle_board.create_word([2,1]) == "c"


# 5. Reflection
# A simple enough problem, just used the most
# of the code from the previous boggle board
# exercise, though at one point I got stuck for
# like 10 mins because of a simple spelling error
# I guess when you get into tunnel vision you 
# overlook the most simplest of obstacles.
