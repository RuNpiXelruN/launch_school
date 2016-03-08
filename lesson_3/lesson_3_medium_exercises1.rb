# Medium Exercises
# Medium 1
# Question 2
# Create a hash that expresses the frequency with which each letter occurs in this string:
# ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
statement = "The Flintstones Rock"

freq = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
    letter_freq = statement.scan(letter).count
    freq[letter] = letter_freq if letter_freq > 0
end

p freq

x = freq.sort_by {|letter,frequency| frequency}.reverse

p x
p '-----------'

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
p '-----------'

def factors(number)
  dividend = number
  divisors = []
  
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

puts factors(12)

def factors(number)
    dividend = number if number > 0
    divisors = []
    
    begin
        divisors << number / dividend if number % dividend == 0
        dividend -= 1
    end until dividend == 0
    divisors
end

puts factors(12)
p '------------'

def rolling_buffer(buffer, max_buffer, new_element)
    buffer << new_element
    buffer.shift(1) if buffer.size >= max_buffer
    buffer
end
p '------------'

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
puts fib(0,1,50)


@limit = 50
def fib(first_num, second_num)
  while second_num < @limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
puts fib(0,1)
p '------------'

x = "hi there justin"

y = x.split.map {|word| word.capitalize}.join(' ')

p x
p y
p '----------'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name,details|
    case details["age"]
    when 0..17
        details["age_group"] = "kid"
    when 18..64
        details["age_group"] = "adult"
    else
        details["age_group"] = "senior"
    end
end
p munsters     




