# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Input:
# A. A array that contains strings passed into the new the object of the Die Class

# Output:
# A. 2 methods that returns the number of labels of the die, 
# and a random side(integer value) from the roll method.

# Steps:
# DEFINE a CLASS Die
#   METHOD initialize(1 parameter: array called labels)
#     initialize instance variable labels
#     IF labels < 1
#       raise ArgumentError
#     END IF-ELSE LOOP
#   END METHOD

#   METHOD labels
#     RETURN Array labels length
#   END METHOD

#   METHOD ROLL
#     RETURN RANDOM (label) 
#   END METHOD
# END CLASS

# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty?
#   		raise AgrumentError.new("Its empty man!")
#   	end
#   	@labels = labels
#   end

#   def labels
#   	@labels.length
#   end

#   def roll
#   	@labels.sample
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new, "Empty Array" if labels.empty?
    @labels = labels
  end

  def labels
    @labels.length
  end

  def roll
    @labels.sample
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# Found a new way to write ArgumentError by Andrew, credit goes to him
# rest is as simple as the integer die class just changing the parameter from integer to array.