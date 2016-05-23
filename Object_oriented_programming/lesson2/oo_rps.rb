# Rock, Paper, Scissors is a two-player game where each player chooses one of three 
# options: Rock, Paper or Scissors. 

# The chosen moves will then be compared to see who wins, according to the following rules:

#   - Rock beats Scissors
#   - Paper beats Rock
#   - Scissor beats Paper
  
# If the players choose the same item it's a tie.

# Nouns: player, move, rule
# Verbs: choose, compare

# Player
#   - choose
  
# Move

# Rule

#   - compare

# --------------------------------

# Player class -----------------------

require 'pry'

class Player
  attr_accessor :move, :name
  
  def initialize(player_type = :human)
    @player_type = player_type
    @move = nil
    set_name
  end
  
  def set_name
    if human?
      n = ""
      loop do
        puts "What is your name?"
        n = gets.chomp
        break unless n.empty?
        puts "Please enter a name"
      end
      self.name = n
    else
      self.name = ['R2D2', 'Mr Spock','Ferrero','Jives'].sample
    end
  end
  
  def choose
    if human?
      choice = nil
      loop do
        puts "Please choose rock, paper or scissors"
        choice = gets.chomp
        break if ['rock', 'paper', 'scissors'].include? choice.downcase
        puts "Sorry, invalid choice"
      end
      self.move = choice
    else
      self.move = ['rock', 'paper', 'scissors'].sample
    end
    # binding.pry
  end
  
  def human?
    @player_type == :human
  end
end



# Game Engine -----------------------

class RPSGame
  attr_accessor :human, :computer
  
  def initialize
    @human = Player.new
    @computer = Player.new(:computer)
  end
  
  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors"
  end
  
  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Bye!"
  end
  
  def display_winner
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
    
    case human.move
    when 'rock'
      puts "It's a tie" if computer.move == 'rock'
      puts "You won!" if computer.move == 'scissors'
      puts "You lost :(" if computer.move == 'paper'
    when 'paper'
      puts "It's a tie" if computer.move == 'paper'
      puts "You won!" if computer.move == 'rock'
      puts "You lost :(" if computer.move == 'scissors'
    when 'scissors'
      puts "It's a tie" if computer.move == 'scissors'
      puts "You won!" if computer.move == 'paper'
      puts "You lost :(" if computer.move == 'rock'
    end
  end
  
  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y','n'].include? answer.downcase
      puts "Sorry, please enter y/n"
    end
    
    answer.downcase == 'y' ? true : false
  end
  
  def play
    display_welcome_message
    
    loop do
      human.choose
      computer.choose
      display_winner
      
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play