# Question 1

# Hashes are commonly found to be more complex than the simple one we saw earlier:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# It is often the case that each key points to another hash instead of a single value:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }
# Figure out the total age of just the male members of the family.

# male_age = 0

# munsters.each do |name,details|
#     male_age += details["age"] if details["gender"] == "male"
# end

# puts male_age

# Question 2
# One of the most frequently used real-world string properties is that of "string substitution", where we take a hard-coded string and modify it with various parameters from our program.
# Given this previously seen family hash, print out the name, age and gender of each family member:
# ...like this:
# (Name) is a (age) year old (male or female).

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name,details|
#     puts "#{name} is a #{details["age"]} year old #{details["gender"]}"
# end

# break up the following string and put it back together with the words in reverse order:

# sentence = "Humpty Dumpty sat on a wall."

# x = sentence.split(/\W/)
# x.reverse!
# y = x.join(' ') + '.'

# puts y

# Question 7
# Method calls can take expressions as arguments. Suppose we define a function called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")












