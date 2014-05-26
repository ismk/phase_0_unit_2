# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:
# A. A integer value passed into the new the object of the Die Class

# Output:
# A. 2 methods that returns the number of sides of the die, 
# and a random side(integer value) from the roll method.

# Steps:
# DEFINE a CLASS Die
# 	METHOD initialize(1 parameter: integer called sides)
# 		initialize instance variable sides
# 		IF sides < 1
# 			raise ArgumentError
# 		END IF-ELSE LOOP
# 	END METHOD

# 	METHOD sides
# 		RETURN integer sides
# 	END METHOD

# 	METHOD ROLL
# 		RETURN RANDOM (side) 
# 	END METHOD

# END CLASS

# 3. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     if sides < 1
#       raise ArgumentError.new("Number of sides less than 1")
#     end
#     @sides = sides
#   end

#   def sides
#     # code goes here
#     @sides
#   end

#   def roll
#     # code goes here
#     rand(@sides)+1
#   end
# end



# 4. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError.new, "Number of sides less than 1" if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)+1
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
puts die.sides == 6
Die.new(0) rescue puts $!.to_s == "Number of sides less than 1"




# 5. Reflection
# had to learn about ruby class and how the scope of the instances and variables work,
# its a bit different from declaring classes in other languages and just had to get the syntax right




