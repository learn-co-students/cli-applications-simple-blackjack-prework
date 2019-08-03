def welcome
  puts "Welcome to the Blackjack Table"
end
  
def deal_card
  return rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  userInput = gets
end

def end_game(int)
  puts "Sorry, you hit #{int}. Thanks for playing!"
end

def initial_round
  x = deal_card() + deal_card()
  display_card_total(x)
  return x
end

def hit? (int)
  choices = ["h", "s"]

  prompt_user
  input = get_user_input

  until choices.include?(input)
    invalid_command
    prompt_user
    input = get_user_input
  end

  if input == "h"
    int += deal_card
  end
  int
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
