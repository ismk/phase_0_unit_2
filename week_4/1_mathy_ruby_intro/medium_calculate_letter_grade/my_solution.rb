# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# A. An Array of integer values.

# What is the output? (i.e. What should the code return?)
# A. Grade Average Letter

# What are the steps needed to solve the problem?
# Define a method called get_grade that takes an array as a parameter
# 	declare variable final = 0
# 		loop each number in array
#  			 add each number to final
# 		End loop
# 		switch(final)
# 			case =>90: return 'A'
# 			break
# 			case =>80: return 'B'
# 			break
# 			case =>70: return 'C'
# 			break
# 			case =>60: return 'D'
# 			break
# 			case <=50: return 'F'
# 			break
# 	return grade


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

def get_grade(arr)
	final = 0
	grade = arr.inject(:+) / arr.length
	case grade
		when 90..100 then 'A'
		when 80..90 then 'B'
		when 70..80 then 'C'
		when 60..70 then 'D'
		when 0..60 then 'F'
	end
end

# 4. Reflection 
# Refactored code using the inject method of array.

