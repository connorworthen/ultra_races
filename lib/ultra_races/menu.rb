# frozen_string_literal: true

class Menu
  def initialize # initialize method to put default values into all the instance variables, so the inspect method will have something to say
    Scraper.firstscrape
  end

  def menu
    options
  end

  def welcome
    puts '____________________________________________________________________________________________________________'
    puts ' '
    puts '------------------------ Welcome to the 15 toughest races in the world! ------------------------------------'
    puts '____________________________________________________________________________________________________________'
    sleep 1
    puts ' '
    puts 'For all those brave souls who are attempting one of these ultramarathons, I wish you the very best of luck!'
    puts '***********************************************************************************************************'
    puts ' '
    puts '----------------------------'
    puts 'Select an option from 1 - 2'
    puts '----------------------------'
    puts ' '
    puts '1.' + " Type 'races' for names, description, and location of the toughest races in the world"
    puts '2.' + " Type 'close' to exit the application"
    puts ' '
  end

  def options
    input = ' '
    while input != 'close' # while loops / != Checks if the value of two operands are equal or not, if values are not equal then condition becomes true
      welcome # calls welcome (which displays menu)
      input = gets.chomp # gets.chomp to make String#chomp be called on whatever gets returns.
      case input # case takes the variables that will be used by when keyword.
      when 'races' # when 'races' is entered displays list then details when chose
        puts ''
        show_list
        list_details
      when 'close' # when 'close' exits application
        close_app # calls method
      end
    end
  end

  def show_list
    Ultra.all.each.with_index(1) do |ultra, i| # This all? method will return true if you call it on an empty array / A block is passed to #each, opened by the code that starts with do
      puts "#{i}. #{ultra.name}" # index number then name displayed
    end
  end

  def list_details
    puts ''
    puts 'To see more information on each race, enter the races number or hit enter to return to main menu'
    puts '***********************************************************************************************************'
    input = gets.strip.to_i # gets method captures the last thing the user typed into the terminal/freeze and wait for user input.
    puts '' # to_i Returns the result of interpreting leading characters in str as an integer base base
    if input.between?(1, Ultra.all.length) # between Returns false if obj <=> min is less than zero or if anObject <=> max is greater than zero, true otherwise/ length Returns the number of key-value pairs in the hash.
      ultra = Ultra.all[input - 1]
      puts ultra.description.to_s # to_s converts the array to a comma-separated sentence where the last element is joined by the connector word.
    elsif input != 0 # != Checks if the value of two operands are equal or not, if values are not equal then condition becomes true
      puts 'That option does not exist...'
      sleep 1
      puts 'Here is the list again:'
      sleep 1
      show_list
    end
    list_details unless input == 0 # unless empty string
  end

  def close_app
    puts 'Exiting the application...'
    sleep 1
    puts 'Thank you'
    sleep 1
    exit
  end
end
