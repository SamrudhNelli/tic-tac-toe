module Game
  def self.play(array)
    print "Play your move (Available boxes : "
    (0...array.length).each do |i|
      print "#{i + 1} " if array[i].nil?
    end
    print ")\nEnter here : "
    input = gets.chomp
    array[input.to_i - 1] = array[10]
    array[10] = array[10].eql?("X") ? "O" : "X"
    array
  end
end
