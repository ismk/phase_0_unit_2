# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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