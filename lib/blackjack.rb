def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  number
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  a = deal_card
  b = deal_card
  display_card_total(a+b)
  
  # code #initial_round here
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    number
  elsif user_input == "h"
    number += deal_card
    number
  else 
    invalid_command
    prompt_user
  end
  # code hit? here
end

def invalid_command
  puts "Please enter valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round
  until total > 21
    hit?(total)

  # code runner here
end
    
