require_relative "lib/board"
require_relative "lib/game"
require_relative "lib/win?"

def play_game(num, player1, player2)
  array = Array.new(11, nil)
  array[9] = (num.odd? ? 0 : 1)
  array[10] = "X"
  until Win.stop(array)
    puts "\n\nThis is #{array[9].odd? ? player1 : player2}'s turn\n".colorize(:cyan)
    Board.print array
    array = Game.play array
  end
  Board.print array
  Win.print_result array, player1, player2
end

puts "\n████████╗██╗░█████╗░  ░░░░░░  ████████╗░█████╗░░█████╗░  ░░░░░░  ████████╗░█████╗░███████╗".colorize(:cyan)
puts " ╚══██╔══╝██║██╔══██╗  ░░░░░░  ╚══██╔══╝██╔══██╗██╔══██╗  ░░░░░░  ╚══██╔══╝██╔══██╗██╔════╝".colorize(:cyan)
puts " ░░░██║░░░██║██║░░╚═╝  █████╗  ░░░██║░░░███████║██║░░╚═╝  █████╗  ░░░██║░░░██║░░██║█████╗░░".colorize(:cyan)
puts " ░░░██║░░░██║██║░░██╗  ╚════╝  ░░░██║░░░██╔══██║██║░░██╗  ╚════╝  ░░░██║░░░██║░░██║██╔══╝░░".colorize(:cyan)
puts " ░░░██║░░░██║╚█████╔╝  ░░░░░░  ░░░██║░░░██║░░██║╚█████╔╝  ░░░░░░  ░░░██║░░░╚█████╔╝███████╗".colorize(:cyan)
puts " ░░░╚═╝░░░╚═╝░╚════╝░  ░░░░░░  ░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░  ░░░░░░  ░░░╚═╝░░░░╚════╝░╚══════╝".colorize(:cyan)

print "\n\nWelcome to the game of TIC-TAC-TOE\nEnter your names here,\n\nPlayer 1 : ".colorize(:cyan)
name1 = gets.chomp
print "\nPlayer 2 : ".colorize(:cyan)
name2 = gets.chomp
print "\nBasic info regarding the game\n".colorize(:cyan)
Board.init

continue_game = true
count = 0

while continue_game
  play_game count, name1, name2
  puts "\nDo you want to play once again? (Y/n)".colorize(:cyan)
  print "Your choice : "
  choice = gets.chomp
  continue_game = false if choice.upcase == "N"
  count += 1
end
