module Board
  def self.print(array)
    puts "\n           ***************************************************************************      \n\n"
    puts "                                         #{(array[0].nil?)? " ":array[0]} | #{(array[1].nil?)? " ":array[1]} | #{(array[2].nil?)? " ":array[2]}  \n"
    puts "                                      --------------- \n"
    puts "                                         #{(array[3].nil?)? " ":array[3]} | #{(array[4].nil?)? " ":array[4]} | #{(array[5].nil?)? " ":array[5]}  \n"
    puts "                                      --------------- \n"
    puts "                                         #{(array[6].nil?)? " ":array[6]} | #{(array[7].nil?)? " ":array[7]} | #{(array[8].nil?)? " ":array[8]}  \n"
    puts "\n           ***************************************************************************      \n\n"
  end
end