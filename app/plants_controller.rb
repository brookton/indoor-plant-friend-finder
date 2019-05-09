require_relative '../config/environment.rb'
#class PlantControl < ActiveRecord::Base
#  belongs_to :NewApp

def air_improvement
  arr = Plant.where(clean_air: true).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here's are NASA's Clean Air Certified indoor plants.".bold.green.on_blue
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
        if x == "exit"
          NewApp.intro
        elsif x == "quit"
          bye
        elsif q <= arr.length
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          air_improvement
        end
    end
end

def plant_info(name)
  ap Plant.find_by(name: name)
  prompt_to_return
end

def easy_to_grow
  arr = Plant.where(difficulty: 1).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here's are names of easy to grow plants.".bold.green.on_blue
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
          bye
        elsif q <= arr.length
          #binding.pry
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          easy_to_grow
        end
    end
end

def medicinal
  arr = Plant.where(medicinal: true).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here's are names of medicinal plants.".bold.green.on_blue
      puts ""
      puts "Select a number for more info on their medicinal properties".bold.blue.on_green
      puts "or type exit to return to main menu.".bold.blue.on_green
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
          bye
        elsif q <= arr.length
          #binding.pry
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          medicinal
        end
    end
end

def flowering
  arr = Plant.where(flowering: true).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here's are some wonderful flowering plant friends.".bold.green.on_blue
      puts "They're really pretty to have around".bold.green.on_blue
      puts ""
      puts "Select a number for more information.".bold.blue.on_green
      puts "or type exit to return to main menu.".bold.blue.on_green
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
          bye
        elsif q <= arr.length
          #binding.pry
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          flowering
        end
    end
end

def pet_safe
  arr = Plant.where(safe: true).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here's are plant friends that are non-toxic if ingested.".bold.green.on_blue
      puts "If you have a hungry pet or starving baby, these are safe to keep around.".bold.green.on_blue
      puts ""
      puts "Select a number for more information.".bold.blue.on_green
      puts "or type exit to return to main menu.".bold.blue.on_green
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
          bye
        elsif q <= arr.length
          #binding.pry
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          pet_safe
        end
    end
end

def low_water
  arr = Plant.where(succulent: true).pluck(:name)
  if arr.length == 0
    empty
  else
      puts ""
      puts "Here are succulent and cacti plants.".bold.green.on_blue
      puts "They're super easy maintenence and require infrequent watering.".bold.green.on_blue
      puts ""
      puts "Select a number for more information.".bold.blue.on_green
      puts "or type exit to return to main menu.".bold.blue.on_green
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
          bye
        elsif q <= arr.length
          #binding.pry
          w = q - 1
          search = arr[w]
          plant_info(search)
        else
          invalid
          low_water
        end
    end
end


#end
