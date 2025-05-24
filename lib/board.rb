require 'colorize'

String.prevent_colors = true  # don't colorize colorized strings
String.prevent_colors true    # don't colorize colorized strings

module Board
  def self.print(array)
    puts "\n           ***************************************************************************      \n".colorize(:light_green)
    puts "                                         #{(array[0].nil?)? " " :(array[0].eql?('X'))? array[0].colorize(:light_red): array[0].colorize(:light_blue)} | #{(array[1].nil?)? " ":(array[1].eql?('X'))? array[1].colorize(:light_red): array[1].colorize(:light_blue)} | #{(array[2].nil?)? " ":(array[2].eql?('X'))? array[2].colorize(:light_red): array[2].colorize(:light_blue)}  ".colorize(:light_green)
    puts "                                      --------------- ".colorize(:light_green)
    puts "                                         #{(array[3].nil?)? " " :(array[3].eql?('X'))? array[3].colorize(:light_red): array[3].colorize(:light_blue)} | #{(array[4].nil?)? " ":(array[4].eql?('X'))? array[4].colorize(:light_red): array[4].colorize(:light_blue)} | #{(array[5].nil?)? " ":(array[5].eql?('X'))? array[5].colorize(:light_red): array[5].colorize(:light_blue)}  ".colorize(:light_green)
    puts "                                      --------------- ".colorize(:light_green)
    puts "                                         #{(array[6].nil?)? " " :(array[6].eql?('X'))? array[6].colorize(:light_red): array[6].colorize(:light_blue)} | #{(array[7].nil?)? " ":(array[7].eql?('X'))? array[7].colorize(:light_red): array[7].colorize(:light_blue)} | #{(array[8].nil?)? " ":(array[8].eql?('X'))? array[8].colorize(:light_red): array[8].colorize(:light_blue)}  ".colorize(:light_green)
    puts "\n           ***************************************************************************      \n".colorize(:light_green)
  end
end