def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(bust)
  # code #end_game here
  puts "Sorry, you hit #{bust}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first = deal_card
  second = deal_card
  total = first + second
  display_card_total(total)
  total
end

def hit?(player_hand)
  # code hit? here
  prompt_user
  option = get_user_input
  if option == "s" 
    # Okay.. don't deal a card?
  elsif option == "h"
    new_card = deal_card
    player_hand += new_card
  else
    invalid_command
    prompt_user
  end
    #display_card_total(player_hand)
    player_hand

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  player_hand =  initial_round
  until player_hand > 21
    player_hand = hit?(player_hand)
  end
  display_card_total(player_hand)
  end_game(player_hand)
end
    
