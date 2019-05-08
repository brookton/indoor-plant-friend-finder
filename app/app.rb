require 'colored'

class NewApp

  def self.intro
    puts "Welcome to Plant Me Baby -- your indoor plant friend finder.".bold.green.on_blue
    puts ""
    puts "How would you like to find your perfect plant?".bold.blue.on_green
    puts " 1 ".bold.magenta.on_green + " - Take the plant friend finder quiz!".red
    puts " 2 ".bold.magenta.on_green + " - Explore air improving plants.".magenta
    puts " 3 ".bold.magenta.on_green + " - Explore easy to grow plants.".yellow
    puts " 4 ".bold.magenta.on_green + " - Explore plants with medicinal properties.".green
    puts " 5 ".bold.magenta.on_green + " - Explore flowering indoor plants.".cyan
    puts " 6 ".bold.magenta.on_green + " - Explore pet safe plants.".red
    puts " 7 ".bold.magenta.on_green + " - Name your plant with our Plant Baby Name Generator!".magenta
    puts " 8 ".bold.magenta.on_green + " - Exit".yellow
    @@selection = gets.chomp
    self.evaluates
  end

  def self.evaluate
    if @@selection == "8"
      puts "good for you!".red.on_green
    elsif @@selection == "no"
      puts "you're a boner".red.on_yellow
      self.intro
    else
      puts "you might need help wiht your typing sillzzz".yellow.on_red
      self.intro
    end
  end

  self.intro
end
