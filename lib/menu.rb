class Menu
  def self.selection
    @@selection
  end

  def welcome
    puts "Welcome to Plant Me Baby--the indoor Plant Friend Finder./n/n".bold
  end

  def self.display_menu
    puts ""
    puts "How would you like to find your plant?./n/n".bold
    puts "1. - Take the plant friend finder quiz!/n/n"
    puts "2. - Explore air improving plants./n/n"
    puts "3. - Explore easy to grow plants./n/n"
    puts "4. - Explore plants with medicinal properties./n/n"
    puts "5. - Explore flowering indoor plants./n/n"
    puts "6. - Explore pet safe plants./n/n"
    puts "7. - Name your plant with our Plant Baby Name Generator!/n/n"
  end

  def self.run_task
    case self.selection
    when 1

    when 2

    when 3

    when 4

    when 5

    when 6

    when 7

  end
