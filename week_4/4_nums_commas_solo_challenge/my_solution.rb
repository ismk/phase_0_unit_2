# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# A. A positive integer value.

# What is the output? (i.e. What should the code return?)
# A. A string of numbers digtially grouped.

# What are the steps needed to solve the problem?
# Declare method seperate_comma that takes one parameter a integer value
# 	 integer_value = Array of individual numbers (split)
# 	 if integer_value.length > 3
# 	 	untill integer_value < 3
# 	 		final = final + integer_value[last 3] + ","
# 		End Untill loop
# 	 Else Return integer 
# 	 End If Else Loop

# 2. Initial Solution
def seperate_comma int
	int = int.to_s.split('')
	final = []

	if int.length > 3
		while int.length > 3
			final.unshift(int.pop(3))
			final.unshift([","])
		end
	else
		final[1..-1]
	end
	final.insert(0,int).join('')
end



# 3. Refactored Solution



# 4. Reflection 
# I tried to solve this challenge in different ways, of course
# the easiest way would’ve been to reverse the digits and remove
# the first 3 elements  and then add the comma, but I wanted to 
# practice with new shift methods in Array 
 