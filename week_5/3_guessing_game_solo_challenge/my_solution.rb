# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Input:
# A. An integer that is passed into the new the object of the GuessingGame Class

# Output:
# A. Returns a symbol either :high, :low or :correct
#    and another method that checks if the guess is same as the answer

# Steps:
# DEFINE a CLASS GuessingGame
#   METHOD initialize(1 parameter: integer called answer)
#     initialize instance variable answer
#   END METHOD

#   METHOD guess(1 parameter: integer called guess)
#   IF answer == guess
#     RETURN :correct
#   ELSIF guess > answer
#     RETURN :high
#   ELSE
#     RETURN :low
#   END IF-ELSE LOOP
# END METHOD

# END CLASS

# 3. Initial Solution

# class GuessingGame
#     @@solved = false
#     @@guess = ""
#   def initialize(number)
#     # Your initialization code goes here
#     @number = rand(number)
#   end
#   # Make sure you define the other required methods, too

#   def start
#     puts "Enter a Guess"
#     @@guess = gets.chomp.to_i
#     if solved?
#       puts "Right Answer"
#     elsif @@guess > @number
#       puts "Try going lower"
#       start
#     else
#       puts "Try going higher"
#       start
#     end
#   end

#   def solved?
#     if @@guess == @number
#       true
#     else
#       false
#     end
#   end

# end




# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if solved?
      :correct
    elsif @guess > @answer
      :high
    else
      :low
    end
  end

  def solved?
    @guess == @answer ? true : false
  end

end


# 1. DRIVER TESTS GO BELOW THIS LINE
# game = GuessingGame.new rand(10)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"






# 5. Reflection
# Was fun working on the guessing game, 
# the logic by the problem was quite simple, 
# running and solving the rspec took more time 
# than the actual problem 

