
def greeting(name, options = {})
    if options.empty?
        puts "hello #{name}"
    else
        puts "hello #{name}. you are #{options[:age]} years old and live in #{options[:city]}."
    end
end

puts greeting('justin')
puts '--------'
puts greeting("justin", {age: 35, city: 'sydney'})