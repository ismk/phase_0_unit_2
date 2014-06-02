# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Marek ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# Check if the yield block returns true or false, 
# if false return "Assertion failed!"


# 3. Copy your selected challenge here

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
			i.size > 1 ? i.to_s.split('').map{|x| x.to_i} : i
		}

		@number.flatten!.inject(:+) % 10 == 0
	end
end


# 4. Convert your driver test code from that challenge into Assert Statements
cc = CreditCard.new(4563960122001999)
assert { cc.check_card }

invalid_number = ("1"*16).to_i
credit = CreditCard.new(invalid_number)
assert {credit.check_card } rescue p $!.message

valid_number = 4563960122001999
credit = CreditCard.new(valid_number)
assert {credit.check_card } rescue p $!.message

invalid_number = 123
CreditCard.new(invalid_number)
assert {credit.check_card} rescue p $!.message

invalid_number = 45639601220019991
CreditCard.new(invalid_number)
assert {credit.check_card} rescue p $!.message




# 5. Reflection

# i think i have an idea how the assertion works
# basically if the yield block returns true it 
# won't raise an error but if it is a false 
# then it will.
