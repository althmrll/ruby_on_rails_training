#tic-tac-toe-game
#ruby tic_tac_toe_game.rb

@grid = [" "," "," "," "," "," "," "," "," "," "]
@game_events=[]
@occupied=0
@wins=[[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7],[1,4,7],[2,5,8],[3,6,9]]
@player_one="Player 1"
@player_two="Player 2"

#Start menu: ask user to start the game
def start_menu
  puts "Welcome to Tic-Tac-Toe!"
  puts "\nWould you like to start the game? (Y/N)"
  answer = gets.chomp.upcase
  
  case answer
  when "Y" then user_config
  when "N" then puts "Goodbye!"
  else
    puts "\n==================================="
    puts "You can only pick between Y and N"
    puts "==================================="
  end
end

#Ask user of preferred symbol
def user_config
  while true
    puts "\nPick a symbol Player 1 (X/O)"
    @player_one_symbol = gets.chomp.upcase

    case @player_one_symbol
      when "X" then
        @player_two_symbol = "O"
        @current_player = @player_one
        @current_player_symbol = @player_one_symbol
        break

      when "O" then 
        @player_two_symbol = "X"
        @current_player = @player_two
        @current_player_symbol = @player_two_symbol
        break

    else
      puts "\n==================================="
      puts "You can only pick between X and O"
      puts "==================================="
    end
  end
  puts "\nPlayer 1 is #{@player_one_symbol}, Player 2 is #{@player_two_symbol}"
  gameplay
end

#start game
def gameplay
  puts "\n==================================="
  puts "The game will consist of a 3x3 board. You can type from number 1 to 9 to mark it as 
  yours. You need to create 3 lines or diagonals to win."
  puts "The marks are as follows:\n"
  puts " 1 | 2 | 3 "
  puts "---+---+---"
  puts " 4 | 5 | 6 "
  puts "---+---+---"
  puts " 7 | 8 | 9 "
  puts "\nStarting Game...\n"
  puts "\n==================================="
  print_board

  while @occupied < 9
    turns
    @game_events.push(@event)
    print_board#Print updated board
  end
  summary
  replay
end

#Print the board
def print_board
  puts " #{@grid[1]} | #{@grid[2]} | #{@grid[3]} "
  puts "---+---+---"
  puts " #{@grid[4]} | #{@grid[5]} | #{@grid[6]} "
  puts "---+---+---"
  puts " #{@grid[7]} | #{@grid[8]} | #{@grid[9]} \n"
end

def check_win(symbol)
  @wins.any? do |line|
    @grid[line[0]] == symbol &&
    @grid[line[1]] == symbol &&
    @grid[line[2]] == symbol
  end
end

#Ask current player to input where they want to put their marks
def turns_mechanic
  while true
    puts "Where do you want to put your mark? (1-9)"
    @index = gets.chomp
    if @index.match?(/^[1-9]$/)
      if @grid[@index.to_i] == " "
        @grid[@index.to_i] = @current_player_symbol
        @occupied += 1
        if check_win(@current_player_symbol)
          ending_message="\n#{@current_player} wins!\n"
          puts ending_message
          @game_events.push(ending_message)
          break
        end
      elsif !check_win(@player_one_symbol) && !check_win(@player_two_symbol) && @occupied == 9
        puts "\nGame ends with a tie\n"
        @game_events.push(ending_message)
        return true
      end
      return false
    elsif if @grid[@index.to_i] != " "
      puts "That position is already occupied. Pick another."
      print_board
    else
      puts "Invalid position, you can only pick from 1 to 9."
      print_board
    end
    end
  end
end

#alternate between players until someone wins or the board gets full
def turns
    case @current_player
    when @player_one then
      puts "Player 1's turn"
      turns_mechanic
      @event = "Player 1 marked position #{@index}"
      @current_player = @player_two
      @current_player_symbol = @player_two_symbol
    when @player_two then
      puts "Player 2's turn"
      turns_mechanic
      @event = "Player 2 marked position #{@index}"
      @current_player = @player_one
      @current_player_symbol = @player_one_symbol
    end
end

#gameplay summary
def summary
  puts "\n==================================="
  puts "GAME SUMMARY:"
  puts "Player 1 picks their symbol"
  puts "Player 1 is #{@player_one}"
  puts "Player 2 is #{@player_two}"
  puts "Game Start"
  for event in @game_events
    puts event
  end
end

#ask if they want to replay or go back to main menu.
def replay
  while true
    puts "\nDo you want to play again? (Y/N)"
    answer = gets.chomp.upcase

    case answer
      when "Y" then
      @grid = [" "," "," "," "," "," "," "," "," "," "]
      @occupied = 0
      @game_events=[]
      puts "Same symbol as last game? (Y/N)"
      same = gets.chomp.upcase

      case same
      when "Y" then
        puts "\nPlayer 1 is #{@player_one_symbol}, Player 2 is #{@player_two_symbol}"
        gameplay
      when "N" then user_config
      else
        puts "Invalid Input!!"
      end
      break

    when "N" 
      puts "That was fun! Goodbye!"
      break

    else
      puts "\n==================================="
      puts "You can only pick between Y and N"
      puts "==================================="
    end
  end
end

start_menu