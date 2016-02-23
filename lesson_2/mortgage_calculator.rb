
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


puts "welcome to mortgage mate. How much would you like to borrow: "
amount = gets.chomp.to_i  #1000

puts "Over how many years?"
loan_life = gets.chomp.to_i #6

loan_value = amount * 1.5 #1500

puts loan_value

annual_rate = ((loan_value/loan_life)/amount) * 100

puts annual_rate

month_duration = loan_life * 12
puts month_duration

monthly_rate = annual_rate / 12
puts monthly_rate


    
    
    
