require 'pry'

# loan amount
# annual rate
# loan duration

# Then, calculate monthly interest rate
# loan duration in months

# what is loan amount
# what is loan value
# what is loan duration(years)
# result loan rate per life of loan

# given loan years --->
#     what is loan duration in months
#     monthly interest rate

# borrow amount not 0 or nil. floats accepted.

def prompt(message)
   puts "=> #{message}" 
end

def integer?(num)
   /^\d+$/.match(num) 
end

def float?(num)
    /\d/.match(num) && /^\d*\.?\d*$/.match(num) 
end

def valid_amount?(num)
    ( integer?(num) || float?(num) ) && num.to_i > 0
end

def valid_loan_life?(num)
   /^\d+$/.match(num)
   num.to_i >= 2 && num.to_i <= 30
end

def loan_value(amount)
    result = case 
             when @loan_life.to_i <=3
                amount.to_i * 1.5
             when @loan_life.to_i <= 7
                amount.to_i * 1.35
             when @loan_life.to_i <= 15
                amount.to_i * 1.25
             else 
                amount.to_i * 1.2
    end
    result
end

def annual_rate
    ((loan_value(@amount).to_f/@loan_life.to_f) / @amount.to_f) * 100
end

def month_duration
    @loan_life.to_i * 12
end

def monthly_rate
    annual_rate / 12
end

    loan_summary = <<-MSG
    -----------------------------------
    
    Thankyou for choosing Mortgage Mate!
    
    -----------------------------------
    
    Your loan details are listed below.
    
        Loan Amount: $#{@amount}
        Loan Term: #{@loan_life} years
        Annual Rate: #{annual_rate}% p.a
        Monthly Rate: #{monthly_rate}% over #{month_duration} months
        
        Total paid at completion of loan is $#{loan_value(@amount)}
        
    -----------------------------------
    MSG


prompt('-------------------------')
prompt('')
prompt("welcome to mortgage mate!")

loop do  # main loop
    prompt('')
    prompt('-------------------------')
    prompt('')
    prompt("How much would you like to borrow: (must be greater than 0!)")
    
    @amount = ''
    loop do
        @amount = gets.chomp  #1000
        if valid_amount?(@amount)
            break
        else
            prompt("Error...please enter a valid number")
        end
    end
    
    prompt("Thanks! Loan amount is $#{@amount}")
    sleep(1)
    
    prompt("Over how many years? (Please enter a whole number.)")
    
    @loan_life = ''
    loop do
        @loan_life = gets.chomp #6
        if valid_loan_life?(@loan_life)
            break
        else
            prompt("Whoops!..please enter a valid yearly term.")
        end
    end
    
    prompt("Done!..a $#{@amount} loan over #{@loan_life} years")
    sleep(1)
    
    prompt("...calculating loan")
    sleep(1)
    
    
    puts loan_summary
    sleep(2)
    
    prompt("Would you like create a new loan?")
    
    start_again = gets.chomp
    break unless start_again.downcase.start_with?('y') || start_again.downcase == 'sure'
end
        
        
prompt("Thankyou for choosing Mortgage Mate! Bye!!")
prompt('')
prompt('------------------------------------------')


annual_interest_rate = interest_rate.to_f() / 100
monthly_interest_rate = annual_interest_rate / 12
months = years.to_i() * 12