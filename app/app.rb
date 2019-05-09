require_relative '../config/environment.rb'


class NewApp < ActiveRecord::Base

  def self.welcome
    puts ""
    puts "Welcome to Plant Me Baby -- your indoor plant friend finder.".bold.green.on_blue
  end

  def self.intro
    puts ""
    puts "How would you like to find your perfect plant?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " - Take the plant friend finder quiz!".red
    puts " 2 ".bold.blue.on_green + " - Explore air improving plants.".magenta
    puts " 3 ".bold.blue.on_green + " - Explore easy to grow plants.".yellow
    puts " 4 ".bold.blue.on_green + " - Explore plants with medicinal properties.".green
    puts " 5 ".bold.blue.on_green + " - Explore flowering indoor plants.".cyan
    puts " 6 ".bold.blue.on_green + " - Explore pet and baby safe plants.".red
    puts " 7 ".bold.blue.on_green + " - Explore succulents and cacti.".magenta
    puts " 8 ".bold.blue.on_green + " - Name your plant with our Old Lady Plant Name Generator!".yellow
    puts " 9 ".bold.blue.on_green + " - Exit".green
    @@selection = gets.chomp
    self.evaluate
  end

  def self.evaluate
    case @@selection
    when "1"
      Quiz.welcome_quiz


    when "2"
      air_improvement
      #binding.pry
    when "3"
      easy_to_grow
    when "4"
      medicinal
    when "5"
      flowering
    when "6"
      pet_safe
    when "7"
      low_water
    when "8"
      name_gen
    when "9"
      puts ""
      puts "Okay! Bye!".red.on_green
      puts ""
    when "exit"
      puts ""
      puts "Okay! Bye!".red.on_green
      puts ""
    when "no"
      puts ""
      puts "Ok then... If you still want a friend, try again.".red.on_yellow
      puts ""
      self.intro
    else
      puts ""
      puts "That was an unknown command. Please try again.".red.on_yellow
      puts ""
      self.intro
    end
  end
    self.welcome
    self.intro
end
