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
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  decision = get_user_input
    if decision == "h"
     value = deal_card
     new_total = current_card_total + value
    elsif decision == "s" 
      new_total = current_card_total
    else
      invalid_command
      chosen_key = get_user_input
        if chosen_key != "s"||"h"
        prompt_user
        end
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
  sum = initial_round
  sum_after_hit = hit?(sum)
  display_card_total(sum_after_hit)
    until sum_after_hit > 21
    end
  end_game(sum_after_hit)
end
    
