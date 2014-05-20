# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

# For the total method:
# 	An Array of numbers

# For the sentence maker method:
# 	An Array of strings

# What is the output? (i.e. What should the code return?)

# For the total method:
# 	total of the numbers

# For the sentence maker method:
# 	a complete sentence with the first Letter capitalized and end with a period '.'

# What are the steps needed to solve the problem?
# Define a method called total that takes an array of numbers as a parameter
# 	declare variable total = 0
# 		loop each number in array
#  			 add each number to total
# 		End loop
# 	return total

# Define a method called sentence_maker that takes an array of strings as a parameter
#     Join all elements of an aray with space
# 	  Use capitalize method on the string and add period '.' to the end of the string

# 2. Initial Solution
def total(arr)
	sum	= 0
	arr.each{|i| sum+= i}
	return sum
end

def sentence_maker(arr)
	arr[0].capitalize!
	arr[-1] = arr[-1] + "."
	arr.join(" ")
end



# 3. Refactored Solution

def total(arr)
	arr.inject(:+)
end

def sentence_maker(arr)
	arr.join(" ").capitalize << "."
end


# 4. Reflection 
# Interestingly enough i never used the inject method of an array before,
# but Marek showed me the error my ways and explained it to me properly how it works.
