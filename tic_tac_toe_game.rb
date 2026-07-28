#tic-tac-toe-game
#ruby tic_tac_toe_game.rb

#Start menu: ask user to start the game
def start_menu
  puts "Welcome to Tic-Tac-Toe!"
  puts "\nWould you like to start the game? (Y/N)"
  answer = gets.chomp.upcase
  
  case answer
  when "Y" then user_config
  else
    puts "Goodbye!"
  end
end

#Ask user
def user_config
  while true
    puts "\nPick a symbol Player 1 (X/O)"
    @player_one = gets.chomp.upcase

    case @player_one
      when "X" then
        @player_two = "O"
        puts "\nplayer_one is #{@player_one}, player two is #{@player_two}"
        break

      when "O" then 
        @player_two = "X"
        puts "\nplayer_one is #{@player_one}, player two is #{@player_two}"
        break

      else
        puts "\n==================================="
        puts "You can only pick between the two"
        puts "==================================="
    end
  end
  gameplay
end

#start game
def gameplay
  puts "\n==================================="
  puts "The game will consist of a 3x3 board. You can type from number 1 to 9 to mark it as yours."
  puts "The marks are as follows:\n"
  puts " 1 | 2 | 3 "
  puts "---+---+---"
  puts " 4 | 5 | 6 "
  puts "---+---+---"
  puts " 7 | 8 | 9 "
  puts "\nStarting Game...\n"
  puts "\n==================================="
  print_board
end

#Print the board
def print_board
  @grid = [" "," "," "," "," "," "," "," "," "]

  puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
  puts "---+---+---"
  puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
  puts "---+---+---"
  puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} \n"
end

#Ask current player to input where they want to put their marks
#Print updated board
#alternate between players until someone wins or the board gets full
def alternate
end
#gameplay summary (?)
def summary
  puts "\n==================================="
  puts "GAME SUMMARY:"
  puts "Player 1 picks their symbol"
  puts "Player 1 is #{@player_one}"
  puts "Player 2 is #{@player_two}"
  puts "Game Start"
end

#ask if they want to replay or go back to main menu.
def replay
end

start_menu
summary

#if player_two != ""
    #puts "player_one is #{player_one}, player two is #{player_two}"
    #break
  #end