module Game
  def self.play(array)
    print "Play your move (Available boxes : "
    (0...array.length).each do |i|
      print "#{i} " if array[i].nil?
    end
    print ")\nEnter here : "
    input = gets.chomp
    if array[input.to_i].nil? == false || input.to_i.negative? || input.to_i > 8
      puts "Invalid input, please try again.\n".colorize(:red)
      return play(array)
    end
    array[input.to_i] = array[10]
    array[10] = array[10].eql?("X") ? "O" : "X"
    array[9] = (array[9].odd? ? 0 : 1)
    array
  end
end
