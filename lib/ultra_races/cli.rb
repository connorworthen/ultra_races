class UltraRaces::CLI

    def call
        welcome
        puts "   "
        options
    end

    def welcome=
    def options
        input = "nil"
        puts "Please enter your input below this line"
        puts "---------------------------------------"
            puts "  "
            input = gets.strip.downcase
            case input
            when "show list of races"
                puts "--------------------------------"
                outs "  "
                list_races
                puts "--------------------------------"
                    options
                    puts " "
            when "1"
                puts "For 50k races"
                puts "--------------------------------"
                    list_races(input)
                options
                puts "--------------------------------"
            when "2"
                puts "For 50m races"
                puts "--------------------------------"
                    list_races(input)
                options
                puts "--------------------------------"
            when "3"
                puts "For 100k races"
                puts "--------------------------------"
                    list_races(input)
                options
                puts "--------------------------------"
            when "4"
                puts "For 100m races"
                puts "--------------------------------"
                    list_races(input)
                    options
                puts "--------------------------------"
            when "close"
            close_app
            end
        end

        def list_races
        
        end
        
        private
        def close_app
            puts "Exiting the application..."
            sleep (1)
            puts "Thank you for using my program!"
            sleep (1)
            exit
          end
        end
            
                

end