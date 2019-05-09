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
  x = gets.chomp
  #binding.pry
  y = x.to_i
  y = y - 1
  search = arr[y]
  plant_info(search)
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
