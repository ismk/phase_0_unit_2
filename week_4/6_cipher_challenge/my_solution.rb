# U2.W4: Cipher Challenge


# I worked on this challenge with: By Myself.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # the first method turns all the characters into lowercase and the second method splits into single characters and puts it in a array.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # Well hashes can only have a unique key for values, the values can repeat but not the key, so if we
            "h" => "d",   # wanted repeating keys, we could implement an Array, it would be easier to rotate too.
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? A. iterating each character in the input array.
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? A. Here we use a boolean value to determine if we should break out of the if loop, if the match is not found its get added to the message.
    cipher.each_key do |y| # What is #each_key doing here? A. iterating each key in cipher.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? A. its comparing each character from the input(i.e X) to the hash cipher(i.e Y).
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? A. because it found a character that matches and it has to add it to the final message.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? A. its a range that gives out numbers from 0 to 9 and the method to_a converts it to an array.
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? A. if there is no matching character, just add it to the final message.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.  A. get all digits.
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning? A. the final message 
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  shift = 4
  input = coded_message.downcase.split("")
  decoded_message = []

  cipher = Hash[(('a'..'z').to_a.rotate(shift)).zip('a'..'z').to_a]

  white_space = Hash.new
  ("@#$%^&*").split('').to_a.each { |key| white_space[key] = " " }
  cipher.merge!(white_space)

  numbers = {}
  (0..9).to_s.split('').to_a.each { |key| numbers[key] = key }
  cipher.merge!(numbers)

  input.each { |i|
    cipher.include?(i) ? decoded_message << cipher[i] : decoded_message << i
  }
  decoded_message = decoded_message.join('')
  decoded_message.gsub!(/\d+/) { |num| num.to_i / 100 }
  decoded_message
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
# It was interesting doing this challenge…sadly I couldn’t find a partner in time to pair for this challenge, 
# but it was fun trying to figure out how to refractor the code as efficiently as possible, I first tried using 
# the ruby regex to find the special, white space and number characters, but felt it was sloppy because i was already
# implementing a Hash for the cipher, so for better readability and understanding, I thought I’ll keep using the 
# hash that way if someone else reads my code they can figure out that I kept comparing each character with the hash 
# key and then retrieved the corresponding value, I wish I could streamlined the adding the special characters and the 
# numbers into the hash though.

 