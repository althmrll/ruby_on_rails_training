#tic-tac-toe-game
#ruby tic_tac_toe_game.rb

#Start menu: ask user to start the game
def start_menu
  puts "Welcome to Tic-Tac-Toe!\n"
  puts "Would you like to start the game? (Y/N)"
  answer = gets.chomp
  answer.upcase!
  
  case answer
  when "Y" then puts "Game Start!"
  else
    puts "Goodbye!"
  end
end

#start game (x goes first always)
def gameplay
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