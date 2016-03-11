# initialize deck
# deal cards to player and dealer
# player turn: hit or stay
# - repeat until bust or stay
# if player bust, dealer wins.
# Dealer turn: hit or stay
# - repeat until total >= 17
# if dealer bust, player wins
# else compare cards and declare winner
# play again?

# 4 suits(h,d,s,c)
# 2 - 13 per suit

require 'pry'

SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'Ace'].freeze

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'Ace'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

    # for variation in ace value
    values.select { |value| value == 'Ace' }.count.times do
      sum -= 10 if sum > 21
    end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player_wins
  elsif player_total < dealer_total
    :dealer_wins
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  
  case result
  when :player_busted
    puts "You've busted! Dealer Wins with #{dealer_cards} and a total of #{dealer_total}"
  when :dealer_busted
    puts "Dealer busted! You Win with #{player_cards} and a total of #{player_total}"
  when :player_wins
    puts "You beat the dealer!! You finished with a total of #{player_total}, the dealer finished with #{dealer_total}"
  when :dealer_wins
    puts "The dealer wins this time :(. The dealer finished with a total of #{dealer_total}, you finished with a total of #{player_total}"
  when :tie
    puts "It's a tie!"
    puts "Your cards: #{player_cards} for a total of #{player_total}"
    puts "Dealer's cards: #{dealer_cards} for a total #{dealer_total}"
  end
end

def play_again?
  puts '============'
  puts "Would you like to play again? (y or n)"
  go_again = gets.chomp
  go_again.downcase.start_with?('y')
  puts '============'
end

puts "Welcome to 21"

loop do # main loop

  # initializing game
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  puts "Dealer cards: #{dealer_cards[0]}, total: #{dealer_cards[0][1]} + ??"
  puts "Player cards: #{player_cards}, total: #{player_total}"
  puts "-------------"

  # player turn
  loop do
    player_choice = nil

    loop do
      sleep(1)
      puts "Would you like to hit or stay? (h or s)"
      puts "-------------"
      player_choice = gets.chomp
      break if ['h', 's'].include?(player_choice)
    end

    if player_choice == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      puts "Your got #{player_cards.last} for a new total of #{player_total}"
    end

    if player_choice == 's'
      puts "You chose to stay with a total of #{player_total}"
      puts "-------------"
      break
    end
    
    break if busted?(player_cards)
  end

  #dealer turn
  unless busted?(player_cards)
    puts "Dealer turn..."
    sleep(1)

    loop do
      dealer_cards << deck.pop
      dealer_total = total(dealer_cards)
      break if dealer_total >= 17
    end
    puts "Dealer's total is #{dealer_total}"
    puts "-------------"
  end
  sleep(1)
  display_result(dealer_cards,player_cards)

  sleep(1.5)
  puts "Play another hand?? (y or n)"
  go_again = gets.chomp
  break unless go_again.downcase.start_with?('y')
end

puts "Thankyou for playing!"
