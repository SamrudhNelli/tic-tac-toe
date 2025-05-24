require_relative "lib/board" 
require_relative "lib/game"
require_relative "lib/win?"

def play_game(num, player1, player2)
  array = Array.new(11, nil)
  array[9] = if num.odd? then 0 else 1 end
  array[10] = 'X'
  until(win?.stop(array))
    puts "This is #{if array[9].odd? then player2 else player1 end}'s turn\n"
    Board.print(array)
    array = Game.play(array)
  end
end