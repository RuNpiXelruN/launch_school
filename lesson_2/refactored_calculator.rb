require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  /^\d+$/.match(num)
end

def float?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
end

def number?(num)
  integer?(num) || float?(num)
end

operator_prompt = <<-MSG
What operation would you like to perform?
  1) Add
  2) Subtract
  3) Multiply
  4) Divide
MSG

def operation_to_message(op)
  result = case op
  when '1'
    'Adding'
  when '2'
    "Subtracting"
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  
  result
end

    

prompt(MESSAGES['welcome'])

name= ''
loop do
  name = gets.chomp
    if name.empty?
      prompt(MESSAGES['valid_name'])
    else
      break
    end
end

prompt(MESSAGES['welcome_user'] + " #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(MESSAGES['bad_number'])
    end
  end
    
  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp
    if number?(number2)
      break
    else
      prompt(MESSAGES['bad_number'])
    end
  end
    
    
    
  prompt(operator_prompt)
        
  operator = ''
    
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end    
    
  prompt("#{operation_to_message(operator)}" + MESSAGES['performing_operation'])
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
    
    
  prompt(MESSAGES['your_result'] + "#{result}!")
    
  prompt(MESSAGES['go_again?'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  end

prompt(MESSAGES['exit_thankyou'])
