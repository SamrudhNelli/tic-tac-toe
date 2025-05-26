require "colorize"
String.prevent_colors = true  # don't colorize colorized strings
String.prevent_colors true    # don't colorize colorized strings
module Win
  def self.stop(array)
    var = check(array)
    if var != "D"
      array[10] = var
      return true
    end
    if array.length == array.compact.length
      array[10] = var
      return true
    end
    false
  end

  def self.check(array)
    (0...3).each do |i|
      if array[((3 * i) + 0)...((3 * i) + 3)].all? { |x| x == "X" } || [array[i], array[3 + i], array[6 + i]].all? { |x| x == "X" }
        return "X"
      elsif array[((3 * i) + 0)...((3 * i) + 3)].all? { |x| x == "O" } || [array[i], array[3 + i], array[6 + i]].all? { |x| x == "O" }
        return "O"
      end
    end
    return "D" unless (array[0] == array[4] && array[4] == array[8] && array[4].nil? == false) || (array[2] == array[4] && array[4] == array[6] && array[4].nil? == false)

    array[4] == "X" ? "X" : "O"
  end

  def self.print_result(array, name1, name2)
    if array[10] == "D"
      puts "\nCONGRATULATIONS TO BOTH #{name1.upcase.colorize(:light_yellow)} AND #{name2.upcase.colorize(:light_yellow)}, THE GAME HAS RESULTED IN A DRAW.. :|\n\n".colorize(:magenta)
    else
      puts "\nCONGRATULATIONS TO #{array[9].zero? ? name1.upcase.colorize(:light_yellow) : name2.upcase.colorize(:light_yellow)} ON WINNING THE GAME!! :)\n\n".colorize(:magenta)
    end
  end
end
