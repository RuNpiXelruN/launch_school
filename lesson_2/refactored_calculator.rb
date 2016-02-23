

def prompt(message)
   puts "=> #{message}" 
end

def valid_number?(num)
   num.to_i != 0 
end

operator_prompt = <<-MSG
What operation would you like to perform?
    1) Add 
    2) Subtract 
    3) Multiply 
    4) Divide
MSG

def operation_to_message(op)
    case op
        when '1'
            'Adding'
        when '2'
            "Subtracting"
        when '3'
            'Multiplying'
        when '4'
            'Dividing'
    end
end

    

prompt("Welcome to Calculator! Enter you name: ")

name= ''
loop do
    name = gets.chomp
    if name.empty?
        prompt("Please enter a valid name")
    else
        break
    end
end

prompt("Hello #{name}!")

loop do # main loop
    number1 = ''
    loop do
        prompt("What is the first number?")
        number1 = gets.chomp.to_i
        if valid_number?(number1)
            break
        else
            prompt("That number doesn't look right..")
        end
    end
    
    number2 = ''
    loop do
        prompt("What is the second number?")
        number2 = gets.chomp.to_i
        if valid_number?(number2)
            break
        else
            prompt("Hmm...something went wrong...")
        end
    end
    
    
    
    prompt(operator_prompt)
        
    operator = ''
    
    loop do
        operator = gets.chomp
        if %w(1 2 3 4).include?(operator)
            break
        else
            prompt("Please choose a 1, 2, 3 or 4")
        end
    end    
    
    prompt("#{operation_to_message(operator)} the two numbers...")
    sleep(1)
    
    result = case operator
        when '1'
            number1 + number2
        when '2'
            number1 - number2
        when '3'
            number1 * number2
        when '4'
            number1.to_f / number2.to_f
    end
    
    
    prompt("The answer is #{result}")
    
    prompt("Would you like to perform another calculation? Y/n")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end

prompt('Thankyou for using calculator!')
