require_relative '../config/environment.rb'
require 'colored'
require 'pry'

class PlantAdder < ActiveRecord::Base
  @@new_plant_hash = {}

  def self.welcome
    puts ""
    sleep 0.5
    puts "                      " + "Thank you!".bold.green_on_black
    puts ""
    puts ""
    sleep 0.5
    puts "   " + "Because of you, our tests will now be more accurate.".bold.green_on_black
    puts "    " + "If our data becomes complete enough, we'll launch...".bold.green_on_black
    puts ""
    sleep 1
    puts ""
    puts "                  " + "The world's first".bold.cyan_on_black
    sleep 0.5
    puts "                  " + "Indoor Plant API!".bold.cyan_on_black
    sleep 1
    puts ""
    puts ""
    puts "                         " + " :) ".bold.yellow_on_black
    sleep 0.5
    puts "                 " + "Ok! lets get started!".bold.green_on_black
    puts ""
    self.name
  end

  # def self.prompt_to_stay_or_go
  #     puts "Type 'stay' to continue or any key to go back to the main menu!"
  #     x = gets.chomp
  #     case x
  #     when "stay"
  #       puts "Woohoo here we go!"
  #       quiz_q_1
  #     else
  #       NewApp.intro
  #     end
  #   end

  def self.next_question
    puts ""
    sleep 0.3
    puts "          "+ "Great work!".bold.blue_on_green
    puts "      "+ "That's now recorded".bold.blue_on_green
    puts "       "+ "Next question...".bold.blue_on_green
    puts ""
    sleep 0.3
  end

  def self.last_question
    puts ""
    sleep 0.3
    puts "          "+ "CONGRATULATIONS!".bold.white_on_red
    puts "   " + "You've reached the final question!".bold.white_on_red
    puts ""
    sleep 0.3
  end


  def self.name
    puts ""
    puts ""
    puts "What's this plant's common name?".bold.blue.on_green
    puts " "
    x = gets.chomp
    if x.downcase == "exit"
      NewApp.intro
    elsif x.downcase == "quit"
      bye
    elsif x.length >= 3
        @@new_plant_hash[:name] = x
        self.next_question
        self.difficulty
    else
      invalid
      self.name
    end
  end

  def self.difficulty
    puts ""
    puts "How difficult is this plant to grow on a scale of 1 to 3?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " low maintenance, infrequent watering, etc.".bold.green
    puts " 2 ".bold.blue.on_green + " medium care, weekly watering, routine fertialization needs, etc.".yellow
    puts " 3 ".bold.blue.on_green + " hard to keep alive, specific humidity, frequent watering, specific lighting, etc.".red
    x = gets.chomp
    case x
    when "1"
      @@new_plant_hash[:difficulty] = 1
      self.next_question
      self.light
    when "2"
      @@new_plant_hash[:difficulty] = 2
      self.next_question
      self.light
    when "3"
      @@new_plant_hash[:difficulty] = 3
      self.next_question
      self.light
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.difficulty
    end
  end


  def self.light
    puts ""
    puts "What kind of lighting does this plant require?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Bright".red
    puts " 2 ".bold.blue.on_green + " Indirect".green
    puts " 3 ".bold.blue.on_green + " Low".yellow
    x = gets.chomp
    case x
    when "1"
      @@new_plant_hash[:light] = "bright"
      self.next_question
      self.flowering
    when "2"
      @@new_plant_hash[:light] = "indirect"
      self.next_question
      self.flowering
    when "3"
      @@new_plant_hash[:light] = "low"
      self.next_question
      self.flowering
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.light
    end
  end

  def self.flowering
    puts ""
    puts "Does this plant have noticible blooms?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    x = gets.chomp.downcase
    case x
    when "1"
      @@new_plant_hash[:flowering] = true
      self.next_question
      self.succulent
    when "2"
      @@new_plant_hash[:flowering] = false
      self.next_question
      self.succulent
    when "yes"
      @@new_plant_hash[:flowering] = true
      self.next_question
      self.succulent
    when "no"
      @@new_plant_hash[:flowering] = false
      self.next_question
      self.succulent
    when "exit"
      NewApp.intro
    else
      invalid
      self.flowering
    end
  end

  def self.succulent
    puts ""
    puts "Is this plant a succulent or cacti?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    x = gets.chomp.downcase
    case x
    when "1"
      @@new_plant_hash[:succulent] = true
      self.next_question
      self.medicinal
    when "2"
      @@new_plant_hash[:succulent] = false
      self.next_question
      self.medicinal
    when "yes"
      @@new_plant_hash[:succulent] = true
      self.next_question
      self.medicinal
    when "no"
      @@new_plant_hash[:succulent] = false
      self.next_question
      self.medicinal
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.succulent
    end
  end



  def self.medicinal
    puts ""
    puts "Does this plant have medicinal qualities?".bold.blue.on_green
    puts "If so, you can add these details later,".bold.blue.on_green
    puts "we'll remind you.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    x = gets.chomp.downcase
    case x
    when "1"
      @@new_plant_hash[:medicinal] = true
      self.next_question
      self.safe
    when "2"
      @@new_plant_hash[:medicinal] = false
      self.next_question
      self.safe
    when "yes"
      @@new_plant_hash[:medicinal] = true
      self.next_question
      self.safe
    when "no"
      @@new_plant_hash[:medicinal] = false
      self.next_question
      self.safe
    when "exit"
      NewApp.intro
    else
      invalid
      self.medicinal
    end
  end

  def self.safe
    puts ""
    puts "Is this plant non-toxic? Safe for pets?".bold.blue_on_green
    puts "Lowest level toxicity is usually considered pet-safe.".bold.blue_on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    x = gets.chomp.downcase
    case x
    when "1"
      @@new_plant_hash[:safe] = true
      self.next_question
      self.clean_air
    when "2"
      @@new_plant_hash[:safe] = false
      self.next_question
      self.clean_air
    when "yes"
      @@new_plant_hash[:medicinal] = true
      self.next_question
      self.clean_air
    when "no"
      @@new_plant_hash[:medicinal] = false
      self.next_question
      self.clean_air
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.safe
    end
  end



  def self.clean_air
    puts ""
    puts "Does this plant improve air quality?".bold.blue.on_green
    puts "If you're unsure, check the NASA Clean Air Study.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    puts " "
    x = gets.chomp.downcase
    case x
      when "1"
        @@new_plant_hash[:clean_air] = true
        self.next_question
        self.propogation
      when "2"
        @@new_plant_hash[:clean_air] = true
        self.next_question
        self.propogation
      when "yes"
        @@new_plant_hash[:clean_air] = true
        self.next_question
        self.propogation
      when "no"
        @@new_plant_hash[:clean_air] = true
        self.next_question
        self.propogation
      when "exit"
        NewApp.intro
      when "quit"
        bye
      else
        invalid
        self.clean_air
    end
  end


  def self.propogation
    puts ""
    puts "Does this plant propogate easily?".bold.blue.on_green
    puts "E.g. if you cut a piece off or split growth, can you repot it?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + " Yes".green
    puts " 2 ".bold.blue.on_green + " No".red
    puts " "
    x = gets.chomp.downcase
    case x
      when "1"
        @@new_plant_hash[:propogation] = true
        self.last_question
        self.care
      when "2"
        @@new_plant_hash[:propogation] = true
        self.last_question
        self.care
      when "yes"
        @@new_plant_hash[:propogation] = true
        self.last_question
        self.care
      when "no"
        @@new_plant_hash[:propogation] = true
        self.last_question
        self.care
      when "exit"
        NewApp.intro
      when "quit"
        bye
      else
        invalid
        self.propogation
    end
  end


  def self.care
    puts ""
    puts ""
    puts "Please enter care information for this plant.".bold.blue_on_green
    puts "If you'd like to add additional details,".bold.blue.on_green
    puts "Such as notes on lighting, medical uses, toxicity,".bold.blue.on_green
    puts "scientific name or origin, etc. Feel free!".bold.blue.on_green
    puts ""
    puts "Important Note:".bold.red
    puts "This response may be long.".bold.green
    puts "Because we're in the command line, your text must be recorded in one line".bold.green
    puts "It may be easier to type out these notes in a text editor, then copy & paste them".bold.green
    puts "Only press return/enter when you're ready to submit your response".bold.red
    puts "  "
    x = gets.chomp
        @@new_plant_hash[:care] = x
        self.quiz_complete
    end

    def self.quiz_complete
      sleep 0.2
      puts "...".red
      sleep 0.5
      puts "......".yellow
      sleep 0.5
      puts ".........".cyan
      sleep 0.5
      puts "............".green
      sleep 0.2
      puts " "
      puts "           " + "CONGRATULATIONS!!!!".cyan.on_blue
      sleep 0.5
      puts "  " +  "YOU'VE HELPED US UPDATE OUR DATABASE!! ".green.on_blue
      sleep 0
      puts ""
      sleep 0.5
      puts "      " + "now submitting all your data".cyan.on_blue
      puts " "
      sleep 0.5
      puts "............".green
      sleep 0.2
      puts ".........".cyan
      sleep 0.2
      puts "......".yellow
      sleep 0.5
      puts "...".red
      sleep 0.2
      puts "               " + "COMPLETE!".bold.blue_on_green
      sleep 1
      puts "           " + "THANK YOU TIMES FOREVER!".bold.blue_on_green
      puts "     " + "YOU'VE HELPED PEOPLE FIND FRIENDS!".bold.blue_on_green
      #binding.pry
      prompt_to_return
    end
end
