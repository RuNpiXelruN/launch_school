
# # Turn this array into a hash where the names are the keys and the values are the positions in the array.

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flint_hash = {}

# flintstones.each_with_index do |name, index|
#     flint_hash[name] = index
# end

# p flintstones

# p flint_hash

# p '-------------'

# # see if there is an age present for "Spot".

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# puts ages.include?('Spot')
# puts ages.has_key?('Spot')

# p '-------------'
# # Add up all of the ages from our current Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# puts ages.values.inject(:+)
# p '-------------'

# # In the age hash throw out the really old people (age 100 or older).

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# new_ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if { |name, age| age >= 100 }

# new_ages.keep_if { |name,age| age < 100 }

# p ages
# p new_ages
# p '-------------'
# # -----------

# munsters_description = "The Munsters are creepy in a good way."

# # -----------
# # add ages for Marilyn and Spot to the existing hash
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages.merge!(additional_ages)

# puts ages

# p '-------------'
# # Pick out the minimum age from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# youngest = ages.values.min

# p youngest

# p '-------------'

# # See if the name "Dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur."

# puts 'no' unless advice.include?('Dino')
# puts 'no' unless /Dino/.match(advice)
# p '-------------'

# # Find the index of the first name that starts with "Be"
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.index { |name| name[0,2] == 'Be' }
# p flintstones.find { |name| name[0,2] == 'Be' }
# p '-------------'

# # Using array#map!, shorten each of these names to just 3 characters:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones.map! { |name| name[0,3] }
# p '-------------'

# # -------------  EASY 3  -------------
# # How can we add the family pet "Dino" to our usual array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.push('Dino')
# p flintstones.unshift('Dino')
# p flintstones.insert(3,'Dino')
# p flintstones.push('Dino', 'Hoppy')
# p flintstones.insert(1,'Dino','Hoppy')

# p '---------------'
# # Shorten this sentence and remove everything starting from "house".
# advice = "Few things in life are as important as house training your pet dinosaur."

# new = advice.slice!(0, advice.index('house'))

# p new
# p advice
# # Write a one-liner to count the number of lower-case 't' characters in the following string:

# statement = "The Flintstones Rock!"
# p statement.count('t')

# p '-------------'


# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Create a hash that expresses the frequency with which each letter occurs in this string:

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# sentence = "Humpty Dumpty sat on a wall."
# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings
# uuid sections each 
# def generate_CC
#     characters = []
#     (0..9).each { |digit| characters << digit.to_s }
    
#     cc = ''
#     sections = [4,4,4,4]
#     sections.each_with_index do |section, index|
#         section.times { cc += characters.sample }
#         cc += '-' unless index >= sections.size - 1
#     end
#     cc
# end 
# p generate_CC





























