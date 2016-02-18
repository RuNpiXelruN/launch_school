
puts "Enter a number between 1 and 100"
num = gets.chomp.to_i

if num <= 0 
    puts "number too low"
elsif num <= 50
    puts "number between 0 and 50"
elsif num < 100
    puts "number between 50 and 100"
else
    puts "number too high"
end
    