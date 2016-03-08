# QUESTION 1

# Show an easier way to write this array:

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones

# ---------------

# QUESTION 2

# How can we add the family pet "Dino" to our usual array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.push('Dino')

# --------------

# QUESTION 3

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.push('Dino', 'Hoppy')

# p flintstones

# ---------------

# QUESTION 4

# Shorten this sentence:
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.split!(0, advice.index('house'))


# p advice
# ---------------
# QUESTION 5

# Write a one-liner to count the number of lower-case 't' characters in the following string:

# statement = "The Flintstones Rock!"

# puts statement.count('t')
# ---------------

# QUESTION 6

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

# title = "Flintstone Family Members"

# title.center(40)



