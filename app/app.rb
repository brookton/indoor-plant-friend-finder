require 'colored'

class NewApp

  def self.intro
    puts "Have you ever played the Oregon Trail? Enter Yes or No".green.on_blue
    @@selection = gets.chomp.downcase
    self.evaluate
  end

  def self.evaluate
    if @@selection == "yes"
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
