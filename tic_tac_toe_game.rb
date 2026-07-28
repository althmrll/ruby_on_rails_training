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
#Print the board
#Ask current player to input where they want to put their marks
#Print updated board
#alternate between players until someone wins or the board gets full
#gameplay summary (?)
#ask if they want to replay or go back to main menu.

start_menu