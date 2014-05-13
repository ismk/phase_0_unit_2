# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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



# 4. Reflection 