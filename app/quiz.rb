require_relative '../config/environment.rb'

  def plant_quiz
    not_ready
  end

#how am i going to store all of this instance of users information?
#then compare this list of attributes to our database
#return the item in our database that has these atributes
#are there any variations of these questions that return no plant?

class Quiz < ActiveRecord::Base

  def welcome_quiz
    puts ""
    puts "Welcome to the Plant Me Baby Friend Finder Quiz!.".bold.green.on_blue
    puts ""
  end

def prompt_to_stay_or_go
    puts "Type 'stay' to continue or any key to go back to the main menu!"
    x = gets.chomp
    case x
    when "stay"
      puts "Woohoo here we go!"
      quiz_q_1
    else
      NewApp.intro
    end
  end

  def quiz_q_1
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
      #some how store light: "bright"
    when "2"
      #some how store light: "indirect"
    when "3"
      #some how store light: low
    when "exit"
      NewApp.intro
    end
  end

  def next_question
    puts "Next Question!"
  end

  next_question

  def quiz_q_2
    puts ""
    puts "Let's talk fur babies and fuzz babies!"
    puts ""
    puts "Or type 'exit' to return to the main menu."
    puts "Do you need to wory about a plat's toxicity?".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes".red
    puts " 2 ".bold.blue.on_green + "No".magenta
    puts " 3 ".bold.blue.on_green + "Low".yellow
    x = gets.chomp
    case x
    when "1"
      #some how store light: "bright"
    when "2"
      #some how store light: "indirect"
    when "exit"
      NewApp.intro
    end
  end

  next_question

  def quiz_q_3
    puts ""
    puts "How much attention can you give your new plant friend?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "I should hardly have to look at it".red
    puts " 2 ".bold.blue.on_green + "I can commit to watering it a couple times a week".magenta
    puts " 3 ".bold.blue.on_green + "Call me tiger-lily mom".yellow
    x = gets.chomp
    case x
    when "1"
      #some how store light: "bright"
    when "2"
      #some how store light: "indirect"
    when "3"
      #some how store light: low
    when "exit"
      NewApp.intro
    end
  end

  next_question

  def quiz_q_4
    puts ""
    puts "Is it important to you that your new plant friend improve the air quality of your home?".bold.blue.on_green
    puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
    puts " 1 ".bold.blue.on_green + "Yes!".red
    puts " 2 ".bold.blue.on_green + "Meh.".magenta
    x = gets.chomp
    case x
    when "1"
      #some how store light: "bright"
    when "2"
      #some how store light: "indirect"
    when "exit"
      NewApp.intro
    end
  end

    next_question

    def quiz_q_5
      puts ""
      puts "Should your new plant friend have medicnal qualities?".bold.blue.on_green
      puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
      puts " 1 ".bold.blue.on_green + "Yes!".red
      puts " 2 ".bold.blue.on_green + "Meh.".magenta
      x = gets.chomp
      case x
      when "1"
        #some how store light: "bright"
      when "2"
        #some how store light: "indirect"
      when "exit"
        NewApp.intro
      end
    end

    next_question

    def quiz_q_6
      puts ""
      puts "Last Question!"
      puts ""
      puts "Does your friend need to be of the flowering variety?".bold.blue.on_green
      puts "Or type 'exit' to return to the main menu.".bold.blue.on_green
      puts " 1 ".bold.blue.on_green + "I want my baby to bloom!".red
      puts " 2 ".bold.blue.on_green + "Simplicity is the ultimate sophistication.".magenta
      x = gets.chomp
      case x
      when "1"
        #some how store light: "bright"
      when "2"
        #some how store light: "indirect"
      when "exit"
        NewApp.intro
      end
    end

    def quiz_comlete
      puts "Here is your new plant friend!"
      puts #returned result from comparison function...
    end

    prompt_to_return
  end
