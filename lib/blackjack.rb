require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"  
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(current_total)
  prompt_user
  choice = get_user_input.downcase
  case choice
    when "s"
      current_total
    when "h"
      current_total += deal_card
      current_total
    else
      invalid_command
      prompt_user
      current_total
  end  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  card_sum = hit?(card_total)
  puts "Your cards add up to #{card_sum}"
  until card_sum > 21 do
    card_sum = hit?(card_sum)
  end
  end_game(card_sum)
end

#runner    
