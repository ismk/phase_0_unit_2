# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def get_grade(arr)
	final = 0
	arr.each{ |score| final += score}
	grade = final / arr.length
	case grade
	when 90..100 then 'A'
	when 80..90 then 'B'
	when 70..80 then 'C'
	when 60..70 then 'D'
	when 0..60 then 'F'
	end
end



# 3. Refactored Solution



# 4. Reflection 