# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution
=begin

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

=end



# Refactored Solution
class CreditCard
	def initialize(number)
		@number = number
		raise ArgumentError.new("Not a Credit Card Number") unless @number.to_s.length == 16 #changed to unless to make it more Ruby-esque
	end

	def check_card
		@number = @number.to_s.split('').map { |digit| digit.to_i }

		(0...16).step(2) {|i| @number[i] += @number[i] }

		@number.map! {|i| i.size > 1 ? i.to_s.split('').map(&:to_i) : i }.flatten!.inject(:+) % 10 == 0 #learned about &: and made it into one line
	end

end


def assert
	raise ArgumentError.new ("INVALID INVALID INVALID") unless yield
end


# DRIVER TESTS GO BELOW THIS LINE
valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
assert { credit.check_card() }

invalid_number = ("1"*15).to_i
credit = CreditCard.new(invalid_number)
assert { credit.check_card() } rescue p $!.message




# Reflection
=begin
Well I looked into other solutions and more than refactoring theirs, I found out how I could 
improve mine, so thats what I did, incorporated whatever I found useful and tried to better my code.	
=end

