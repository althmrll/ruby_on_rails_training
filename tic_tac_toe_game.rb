#tic-tac-toe-game
#ruby tic_tac_toe_game.rb

#Start menu: ask user to start the game
def start_menu
  puts "Welcome to Tic-Tac-Toe!\n"
  puts "Would you like to start the game? (Y/N)"
  answer = gets.chomp.upcase
  
  case answer
  when "Y" then user_config
  else
    puts "Goodbye!"
  end
end

#Ask user
def user_config
  puts "Pick a symbol Player 1 (X/O)"
  player_one = gets.chomp.upcase

  case player_one
  when "X" then player_two = "O"
  when "O" then player_two = "X"
  else
    puts "You can only pick between the two"
  end
  puts "player_one is #{player_one}, player two is #{player_two}"
end
#start game
def gameplay
  print_board
end

#Print the board
def print_board
end

#Ask current player to input where they want to put their marks
#Print updated board
#alternate between players until someone wins or the board gets full
def alternate
end
#gameplay summary (?)
def summary
end

#ask if they want to replay or go back to main menu.
def replay
end

start_menu