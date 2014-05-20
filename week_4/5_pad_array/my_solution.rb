# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with Marek].

# 1. Pseudocode

# What is the input?
# A. Input is An array with 2 arguments a number and an optional value.

# What is the output? (i.e. What should the code return?)
# A. An Array with the padded number of optional values.

# What are the steps needed to solve the problem?
# A.
# define method pad in class Array
# 	check if length of array < number
#		number - array length loop
# 			array = array + optional value
# 		End times Loop
# 	Else
# 		return array
# 	End If-Else Loop


# 2. Initial Solution
class Array
	def pad!(int, opt=nil)
		if self.length < int
			(int-self.length).times do
				self << opt
			end
		self
		else
			self
		end
	end

	def pad(int, opt=nil)
		new_array = Array.new(self)
		if new_array.length < int
			(int-new_array.length).times do
				new_array << opt
			end
		new_array
		else
			new_array
		end
	end
end



# 3. Refactored Solution
class Array
	def pad!(int, opt=nil)
		self.length < int ? (int-self.length).times {self << opt} : self
		self
	end

	def pad(int, opt=nil)
		new_array = Array.new(self)
		new_array.length < int ? (int-new_array.length).times {new_array << opt} : new_array
		new_array
	end
end



# 4. Reflection 
# Marek was a great help in this challenge, we knew what we were doing so we finished
# this challenge quite fast, I needed help with the declaring the class and adding
# custom methods in it, fortunately Marek was on top of that and quickly taught me 
# how the syntax worked, rest was just a basic if else and times loop.
