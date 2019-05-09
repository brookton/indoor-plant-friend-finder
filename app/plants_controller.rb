require_relative '../config/environment.rb'
#class PlantControl < ActiveRecord::Base
#  belongs_to :NewApp

def quiz
end

def numbered(arr)
    arr.each_with_index do |name, index|
      puts "#{index+1}. " + name
    end
end

def air_improvement
  arr = Plant.where(clean_air: true).pluck(:name)
  puts ""
  puts "Here's are names of NASA's Clean Air Certified indoor plants.".bold.green.on_blue
  puts ""
  puts "Select a number for more info or exit to return to main menu.".bold.blue.on_green
    arr.each_with_index do |name, index|
      puts " #{index+1} ".bold.magenta.on_green + " - " + name.bold.green
    end
  puts "exit".bold.green.on_magenta + " - " + "Main Menu"
  puts "quit".bold.red.on_green + " - " + "Quit"
  z = arr.length
  x = gets.chomp
  q = x.to_i
    #binding.pry
    if x == "exit"
      NewApp.intro
    elsif x == "quit"
      puts "Okay! Bye!".green.on_red
    elsif q <= arr.length
      #binding.pry
      w = q - 1
      search = arr[w]
      plant_info(search)
    else
      puts ""
      puts "Invalid input. Please try again".bold.green.on_red
      puts ""
      air_improvement
    end
  #binding.pry
end

def plant_info(name)
  ap Plant.find_by(name: name)
end

def easy_to_grow
end

def medicinal
end

def flowering
end

def pet_safe
end

def name_generator

end

#end
