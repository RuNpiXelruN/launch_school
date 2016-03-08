# scissors > paper
# paper > rock
# rock >lizard
# lizard > spock
# spock > scissors
# scissors > lizard
# lizard > paper
# paper > spock
# spock > rock
# rock >scissors

VALID_CHOICES = %w(rock paper scissors spock lizard).freeze

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  first = first.downcase
  second = second.downcase

  (first.start_with?('r') && (/^sc/.match(second) || second.start_with?('l'))) ||
    (first.start_with?('p') && (second.start_with?('r') || /^sp/.match(second))) ||
    (/^sc/.match(first) && second.start_with?('p', 'l')) ||
    (/^sp/.match(first) && (/^sc/.match(second) || second.start_with?('r'))) ||
    (first.start_with?('l') && (second.start_with?('p') || /^sp/.match(second)))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!!")
  elsif win?(computer, player)
    prompt("Computer wins :(")
  else
    prompt("It's a tie!")
  end
end

loop do # main loop
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
      sleep(1)
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}")
  sleep(0.5)

  display_results(choice, computer_choice)
  sleep(2)

  prompt("Would you like to play again?")
  go_again = gets.chomp
  break unless go_again.downcase.start_with?('y') || go_again.downcase == 'sure'
end

prompt("Thankyou for playing!!")
