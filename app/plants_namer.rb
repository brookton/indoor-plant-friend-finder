
require_relative '../config/environment.rb'
require "colored"

  def name_gen
    puts "n".red.on_green + "o".blue.on_green + "w ".magenta.on_green + "generating a new name for your plant friend...".blue.on_green
    sleep 1
    puts "...".red
    sleep 1
    puts "......".yellow
    sleep 1
    puts ".........".cyan
    sleep 1
    puts "............".green
    sleep 1
    puts " "
    sleep 1
    puts "       " + "CONGRATULATIONS!!!!".cyan.on_blue
    sleep 1
    puts "       " + "YOUR PLANT NAME IS:".blue.on_green
    sleep 1
    @names = ["Barbra", "Beatrice", "Bernadine", "Colleen", "Edith", "Betty", "Carol", "Deborah", "Doris", "Jewel", "Helen", "Lenora", "Lorene", "Elanor", "Gwendolyn", "Meredith", "Gammie", "Bertha", "Muriel", "Noreen", "Trudy"]
    puts " "
    sleep 1
    puts "             " + " #{@names.sample} ".blue.on_green
    sleep 0.5
    puts " "
    sleep 0.2
    puts "............".green
    sleep 0.2
    puts ".........".cyan
    sleep 0.2
    puts "......".yellow
    sleep 0.5
    puts "...".red
    sleep 1
    prompt_to_return
  end
