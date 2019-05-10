require_relative '../config/environment.rb'
require 'pry'
require 'awesome_print'
  #def plant_quiz
  #  not_ready
  #end



class Quiz < ActiveRecord::Base

  @@user_hash = {}

  def self.next_question
    puts "Next Question!"
  end

  def self.welcome_quiz
    puts ""
    puts "Welcome to the Plant Me Baby Friend Finder Quiz!.".bold.green.on_blue
    puts ""
    self.quiz_q_1
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

  def self.quiz_q_1
    puts ""
    puts "How much attention can you give your new plant friend?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "It should be hard for me to kill".red
    puts " 2 ".bold.blue.on_green + "I'm good about watering once a week'".magenta
    puts " 3 ".bold.blue.on_green + "Humidity? Mulitple waterings a week? I'll keep it alive no problem.".yellow
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:difficulty] = 1
      next_question
      self.quiz_q_2
    when "2"
      @@user_hash[:difficulty] = 2
      next_question
      self.quiz_q_2
    when "3"
      @@user_hash[:difficulty] = 3
      next_question
      self.quiz_q_2
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.quiz_q_1
    end
  end

  def self.quiz_q_2
    puts ""
    puts "Let's talk habitat!"
    puts ""
    puts "Or type 'exit' to return to the main menu."
    puts "How would you describe the light in your home?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Bright".red
    puts " 2 ".bold.blue.on_green + "Indirect".magenta
    puts " 3 ".bold.blue.on_green + "Low".yellow
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:light] = "bright"
      next_question
      self.quiz_q_24
    when "2"
      @@user_hash[:light] = "indirect"
      next_question
      self.quiz_q_24
    when "3"
      @@user_hash[:light] = "low"
      next_question
      self.quiz_q_24
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.quiz_q_2
    end
  end

  def self.quiz_q_24
    puts ""
    puts "Should your new plant be low water?".bold.blue.on_green
    puts "Do you prefer succulents or cacti?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes!".red
    puts " 2 ".bold.blue.on_green + "Meh.".magenta
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:succulent] = true
      self.quiz_q_3
    when "2"
      @@user_hash[:succulent] = false
      self.quiz_q_3
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.quiz_q_24
    end
  end

  def self.quiz_q_3
    puts ""
    puts "Does your friend need to be of the flowering variety?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "I want my baby to bloom!".red
    puts " 2 ".bold.blue.on_green + "Simplicity is the ultimate sophistication.".magenta
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:flowering] = true
      self.quiz_q_4
    when "2"
      @@user_hash[:flowering] = false
      self.quiz_q_4
    when "exit"
      NewApp.intro
    else
      invalid
      self.quiz_q_3
    end
  end

  def self.quiz_q_4
    puts ""
    puts "Should your new plant friend have medicinal qualities?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes!".red
    puts " 2 ".bold.blue.on_green + "Meh.".magenta
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:medicinal] = true
      next_question
      self.quiz_q_5
      #binding.pry
    when "2"
      @@user_hash[:medicinal] = false
      next_question
      self.quiz_q_5
    when "exit"
      NewApp.intro
    else
      invalid
      self.quiz_q_4
    end
  end

  def self.quiz_q_5
    puts ""
    puts "Let's talk pets pups & babies!"
    puts ""
    puts "Or type 'exit' to return to the main menu."
    puts ""
    puts "Do you need to wory about a plant's toxicity?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes".red
    puts " 2 ".bold.blue.on_green + "No".magenta
    x = gets.chomp
    case x
    when "1"
      @@user_hash[:safe] = true
      next_question
      self.quiz_q_6
    when "2"
      @@user_hash[:safe] = false
      next_question
      self.quiz_q_6
    when "exit"
      NewApp.intro
    when "quit"
      bye
    else
      invalid
      self.quiz_q_5
    end
  end

  def self.quiz_q_6
    puts ""
    puts "Is it important to you that your new plant friend improve the air quality of your home?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes!".red
    puts " 2 ".bold.blue.on_green + "Meh.".magenta
    puts ""
    x = gets.chomp
    case x
      when "1"
        @@user_hash[:clean_air] = true
        self.quiz_result
      when "2"
        @@user_hash[:clean_air] = true
        self.quiz_result
      when "exit"
        NewApp.intro
      when "quit"
        bye
      else
        invalid
        self.quiz_q_6
    end
  end

    def self.quiz_complete
      sleep 1
      puts "        " + "CONGRATULATIONS!!!!".cyan.on_blue
      sleep 1
      puts "  " +  "WE FOUND YOU A PLANT FRIEND MATCH: ".green.on_blue
      sleep 1
      puts ""
      #quiz_result
      #prompt_to_return
    end

    def self.quiz_result
      #hash = {:light => "bright", :difficulty => 3}
      arr = Array.new
      arr = Plant.where(@@user_hash).pluck(:name)
      #binding.pry
      if arr.length == 0
        puts "That's the end of our test!".blue.on_green
        puts "Our database needs some expansions.".blue.on_green
        puts ""
        puts "Sorry, we weren't able to match you.".blue.on_green
        puts "Please check back soon for updates!".blue.on_green
        prompt_to_return
      else
        self.quiz_complete
        puts ""
        puts "Select a number for more info or exit to return to main menu.".bold.blue.on_green
          arr.each_with_index do |name, index|
            puts " #{index+1} ".bold.blue.on_green + " - " + name.bold.green
          end
        exit_or_quit
        puts ""
        puts ""
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
          self.quiz_result
        end
      end
    end



  end
