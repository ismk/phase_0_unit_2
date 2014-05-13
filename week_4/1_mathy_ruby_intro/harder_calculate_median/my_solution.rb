# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def median(array)
  middle_number = array.length / 2
  array.sort!
  if array.length.even?
    (array[middle_number - 1] + array[middle_number])/ 2.0
  else
    array[middle_number]
  end
end



# 3. Refactored Solution



# 4. Reflection 