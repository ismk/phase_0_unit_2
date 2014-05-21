# U2.W4: Homework Cheater!


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input
# The method essay_writer takes parameters title, name, date, thesis_statement and pronoun

# Output
# It returns a finished string formatted properly to represent an essay.

# Steps:
# Declare method essay_writer which takes the following parameters :  title, topic, date, thesis_statment, pronoun
# If pronoun = male
#   use "He,Him,His"
# Else
#   use "She,Her,Hers"
# End If Else Loop
# Return formatted string


# 3. Initial Solution

# def essay_writer(title, name, date, thesis_statment, pronoun)
#   if pronoun == "male"
#     pronouns = ["He", "Him", "His"]
#   else
#     pronouns = ["She", "Her", "Hers"]
#   end
#  "#{name} the #{title}! was an imporant person in #{date}. #{pronouns[0]} accomplished a lot. I wanted to learn more about #{pronouns[1]}.
#  {thesis_statment} #{name.split[1]} contributed a lot to the world."
# end


# 4. Refactored Solution

def essay_writer(title, name, date, thesis_statment, pronoun)
 pronoun == "male" ? pronouns = ["He", "Him", "His"] : pronouns = ["She", "Her", "Hers"]
  "#{name} the #{title}! was an imporant person, born in #{date}. #{pronouns[0]} accomplished a lot. I wanted to learn more about #{pronouns[1]}. #{pronouns[0]} #{thesis_statment} #{name.split[0]} contributed a lot to the world."
end

# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer("Cosmonaut",
                 "Yuri Alekseyevich Gagarin",
                  1934,
                  "was a Russian cosmonaut (astronaut). He became the first human in space on April 12, 1961, in a rocket launched by the Soviet Union.",
                  "male") == "Yuri Alekseyevich Gagarin the Cosmonaut! was an imporant person, born in 1934. He accomplished a lot. I wanted to learn more about Him. He was a Russian cosmonaut (astronaut). He became the first human in space on April 12, 1961, in a rocket launched by the Soviet Union. Yuri contributed a lot to the world."

puts essay_writer("Inventor",
                  "Nikola Tesla",
                   1856,
                   "is best known for his contributions to the design of the modern alternating current (AC) electricity supply system.",
                   "male") == "Nikola Tesla the Inventor! was an imporant person, born in 1856. He accomplished a lot. I wanted to learn more about Him. He is best known for his contributions to the design of the modern alternating current (AC) electricity supply system. Nikola contributed a lot to the world."

puts essay_writer("National Heroine of France",
                  "Joan of Arc",
                  1412,
                  "was a peasant girl born in the east of France. She led the French army to several important victories in the Hundred Years' War. She said that God was helping her. She also helped Charles VII to be crowned king. She was taken by the Burgundians, sold to the English people, tried by an ecclesiastical court, and burned at the stake when she was 19 years old.",
                  "female") == "Joan of Arc the National Heroine of France! was an imporant person, born in 1412. She accomplished a lot. I wanted to learn more about Her. She was a peasant girl born in the east of France. She led the French army to several important victories in the Hundred Years' War. She said that God was helping her. She also helped Charles VII to be crowned king. She was taken by the Burgundians, sold to the English people, tried by an ecclesiastical court, and burned at the stake when she was 19 years old. Joan contributed a lot to the world."



# 5. Reflection 
# Pretty simple solution just using the agruments passed into the method to somehow
# make it applicable to many different inputs.
