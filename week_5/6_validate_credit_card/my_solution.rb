# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: An integer that is 16 digits long only(credit card number)

# Output: Returns boolean value either true or false based on the validity of the credit card number(the integer value)

# Steps:
#We initialize the class with the CreditCard number first.
# DEFINE a CLASS CreditCard
# 	check if number is exactly 16
# 		raise ArgumentError if not
# 	else proceed
# 		split number and make it into an Array
# 	LOOP and double every other number in the Array
# 	END LOOP
# 	IF one of digits in Array is a double integer, split that
# 	END IF-ELSE LOOP
# 	ADD ALL ELEMENTS IN THE ARRAY
# 	Check remainder = 0 by %
# 	return check
# END



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits


# class CreditCard
# 	def initialize(number)
# 		@number = number
# 		if @number.to_s.length < 16 || @number.to_s.length > 16
# 			raise ArgumentError.new("Not a Credit Card Number")

# 		end
# 	end

# 	def check_card
# 		@number = @number.to_s.split('').map { |digit| digit.to_i }

# 		(@number.length).times {|i| if i % 2==0
# 			@number[i] += @number[i]
# 		end}

# 		@number = @number.map {|i|
# 			if i.to_s.length > 1
# 				i.to_s.split('').map{|x| x.to_i}
# 			else
# 				i
# 			end
# 		}

# 		@number.flatten!

# 		step_2 = @number.inject(:+)

# 		step_3 = step_2 % 10 == 0
# 		step_3
# 	end
# end



# 4. Refactored Solution
class CreditCard
	def initialize(number)
		@number = number
		raise ArgumentError.new("Not a Credit Card Number") if @number.to_s.length != 16
	end

	def check_card
		@number = @number.to_s.split('').map { |digit| digit.to_i }

		(@number.length).times {|i|
			if i % 2==0
				@number[i] += @number[i]
			end
		}

		@number = @number.map {|i|
			i.to_s.length > 1 ? i.to_s.split('').map{|x| x.to_i} : i
		}

		@number.flatten!.inject(:+) % 10 == 0
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

cc = CreditCard.new(4563960122001999)
p cc.check_card




# 5. Reflection
# definitely learned a lot in this exercise mostly about the map methods, 
# i would like to spend more time and streamline the code, refactor it properly 
# so as have a cleaner look for splitting the double-digits in the array.