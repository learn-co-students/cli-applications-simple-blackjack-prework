def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Tyoe 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()
  
  sum = card1 + card2
  display_card_total(sum)
  
end

def invalid_command()
  puts "Please enter a valid command"
  prompt_user()
  get_user_input
end

def hit?(card_total)
  prompt_user()
  user_input = get_user_input()
  if user_input == "s"
    card_total
  elseif user_input == "h"
    card_total += deal_card()
  else
    invalid_command()
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
