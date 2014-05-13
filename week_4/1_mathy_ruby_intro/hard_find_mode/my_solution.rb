# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def mode(arr)
	arr.sort!
	freq_val = Hash.new(0)
	arr.each{ |i|
	 freq_val[i] += 1 }
	 freq_val.sort_by { |k,v| v}
	 return freq_val.values[0]
end

puts mode([1,1,1,2,3,4,5,6])


# 3. Refactored Solution



# 4. Reflection 