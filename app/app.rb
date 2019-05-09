require_relative '../config/environment.rb'


class NewApp < ActiveRecord::Base

  def self.welcome
    puts ""
    puts "Welcome to Plant Me Baby -- your indoor plant friend finder.".bold.green.on_blue
  end

  def self.intro
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
    self.evaluate
  end

  def self.evaluate
    case @@selection
    when "1"
      puts "good for you!".red.on_green
    when "2"
      air_improvement
      #binding.pry
    when "3"
      puts "good for you!".red.on_green
    when "4"
      puts "good for you!".red.on_green
    when "5"
      puts "good for you!".red.on_green
    when "6"
      puts "good for you!".red.on_green
    when "7"
      puts "good for you!".red.on_green
    when "8"
      puts "Okay! Bye!".red.on_green
    when "exit"
      puts "Okay! Bye!".red.on_green
    when "no"
      puts "Ok then... If you still want a friend, try again.".red.on_yellow
      self.intro
    else
      puts "That was an unknown command. Please try again.".red.on_yellow
      puts ""
      self.intro
    end
  end
    self.welcome
    self.intro
end
