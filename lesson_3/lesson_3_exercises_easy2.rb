# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flint_hash = {}

# flintstones.each_with_index do |name, index|
#     flint_hash[name] = index
# end

# p flint_hash

# ------------------------------
# Add up all of the ages from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# x = ages.values.inject(:+)

# p x

# y = ages.keys

# p y

#  -----------------------------

# throw out the really old people (age 100 or older).

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.keep_if do |name, age|
#     age <= 100
# end

# p ages

#  -------------------------------
# convert to
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# munsters_description = "The Munsters are creepy in a good way."

# puts munsters_description.capitalize
# puts munsters_description.swapcase
# puts munsters_description.downcase
# puts munsters_description.upcase

# --------------------------------
# add additional_ages = { "Marilyn" => 22, "Spot" => 237 } to the ages hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages = ages.merge(additional_ages)

# p ages

# ---------------------------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# arr = ages.values.min

# p arr

# p ages

# ---------------------------------

# advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.include?('Dino')

# puts 'no!' unless /Dino/.match(advice)

# puts 'yes!' if /house/.match(advice)

# ---------------------------------

# QUESTION 8

# Find the index of the first name that starts with "Be"

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.index { |name| name[0,2] == 'Be' }

# ---------------------------------

# QUESTION 9

# Using array#map!, shorten each of these names to just 3 characters:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! { |name| name[0,3] }

# new = flintstones.collect { |name| name[0,3] }

# p new
# p flintstones

# ---------------------------------

# QUESTION 10

# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0,3] }

p flintstones



    