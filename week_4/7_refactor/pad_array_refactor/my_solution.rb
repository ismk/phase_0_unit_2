# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# Copy solution here:





# 2. Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:




# 3. My original solution:
class Array
	def pad!(int, opt=nil)
		self.length < int ? (int-self.length).times {self << opt} : self
		self
	end

	def pad(int, opt=nil)
		self.clone.pad!(int,opt)
	end
end


# 4. My refactored solution:




# 5. Reflection