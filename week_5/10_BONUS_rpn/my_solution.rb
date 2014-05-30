# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class RPNCalculator
	# Define your methods, here!
	def evaluate(input)
		arr = []
		operators = ['+','-','*','/']
		input = input.split(' ')
		input.each { |i|
			if (operators.include? i) && (arr.length > 1)
				operation = arr.pop(2)
				result = operation[0].to_i.send(i,operation[1].to_i)
				arr<<result
			else
				arr<<i.to_i
			end
		}
		arr.first
	end
end

# rpn = RPNCalculator.new
# p rpn.evaluate('1 2 + 4 * 5 + 3 -')


# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE

rpn = RPNCalculator.new
p rpn.evaluate('1 2 + 4 * 5 + 3 -') == 14





# 5. Reflection
