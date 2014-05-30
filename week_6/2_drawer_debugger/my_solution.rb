# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end

	def add_item(item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end

end

class Silverware
	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean
		@clean = true
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? A. Empty Array

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

p fork.clean == true
p silverware_drawer.contents.empty?
spork = Silverware.new("spork")
silverware_drawer.add_item(spork)
butterk = Silverware.new("Butter Knife")
silverware_drawer.add_item(butterk)
p silverware_drawer.contents
p spork.clean == true 
p spork.eat 
p spork




# 5. Reflection
# I am not sure if this is the way instructors intended me to debug the code,
# I added couple of statements and methods but I didn't understand
# what other methods are to be added to the drawer class, I guess
# I'll have to review someones else code and see what I am missing.
