# frozen_string_literal: true

class Menu
  def initialize
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
    while input != 'close'
      welcome
      input = gets.chomp
      case input
      when 'races'
        puts ''
        show_list
        list_details
      when 'close'
        close_app
      end
    end
  end

  def show_list
    Ultra.all.each.with_index(1) do |ultra, i|
      puts "#{i}. #{ultra.name}"
    end
  end

  def list_details
    puts ''
    puts 'To see more information on each race, enter the races number or hit enter to return to main menu'
    puts '***********************************************************************************************************'
    input = gets.strip.to_i
    puts ''
    if input.between?(1, Ultra.all.length)
      ultra = Ultra.all[input - 1]
      puts ultra.description.to_s
    elsif input != 0
      puts 'That option does not exist...'
      sleep 1
      puts 'Here is the list again:'
      sleep 1
      show_list
    end
    list_details unless input == 0
  end

  def close_app
    puts 'Exiting the application...'
    sleep 1
    puts 'Thank you'
    sleep 1
    exit
  end
end
