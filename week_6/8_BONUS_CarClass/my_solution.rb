# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class Car
	attr_reader :model, :color, :total_distance, :speed, :speed_limit, :distance
	def initialize(model, color)
		@model = model
		@color = color
		@total_distance = 0
		@speed = 0 

	end

	def drive(distance, speed_limit)
		@speed_limit = speed_limit
		@total_distance += distance
		if @speed < @speed_limit
			accelerate
		elsif @speed > @speed_limit
			decelerate
		else
			@speed = @speed_limit
		end
	end

	def accelerate
		@speed = @speed_limit
	end
	def decelerate
		@speed = @speed_limit
	end

end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
dodge = Car.new("Dodge","Red")
dodge.drive(0.25, 25)
dodge.drive(1.5, 25)
dodge.drive(2, 5)
dodge.total_distance








# 5. Reflection 