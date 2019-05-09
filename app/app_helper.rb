require_relative '../config/environment.rb'

def not_ready
  puts ""
  puts "This feature is not yet ready!".green.on_red
  puts "Please check back soon.".green.on_red
  prompt_to_return
end

def bye
  puts ""
  puts "Okay! Bye!".green.on_red
  puts ""
end

def invalid
  puts ""
  puts "Invalid input. Please try again".bold.green.on_red
  puts ""
end

def prompt_to_return
  puts ""
  puts "Press any key to return to main menu.".bold.blue.on_green
  puts "or type exit to exit. ".bold.blue.on_green
  puts ""
  x = gets.chomp
  case x
  when "exit"
    bye
  else
    NewApp.intro
  end
end

def empty
    puts ""
    puts "Oh no! It looks like there aren't any plants like this yet in our database.".bold.green.on_red
    prompt_to_return
end

def numbered(arr)
    arr.each_with_index do |name, index|
      puts "#{index+1}. " + name
    end
end
