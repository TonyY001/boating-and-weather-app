class Menu
    attr_accessor :name, :options
    attr_reader :message
    
    def initialize(name, options)
        @name = name
        @options = options
    end
    
    def display_menu
        @options.each do | option |
        return option
        end
    end

    def message
        return "Please enter an option from the list:".colorize(:red)
    end
end

class TideMenu < Menu
    
        def initialize(name,options)
            super
        end

        def today_tide
            tides = CSV.read('data_files/tide_data.csv')
            todays_tide = tides[1][3..10]
                puts "The tides for today are:".colorize(:red)
                puts "At #{todays_tide[0]} a height of #{todays_tide[1]} metres
At #{todays_tide[2]} a height of #{todays_tide[3]} metres
At #{todays_tide[4]} a height of #{todays_tide[5]} metres
At #{todays_tide[6]} a height of #{todays_tide[7]} metres".colorize(:blue)
        end

        def week_tide
            puts "The tides for the following week are:".colorize(:red)
            tides = CSV.read('data_files/tide_data.csv', headers: true)
            tides.each do |result|
                puts "#{result['month']} #{result['day']}, #{result['year']}:".colorize(:yellow) 
                puts "At #{result['time1']} a height of #{result['height1']} metres
At #{result['time2']} a height of #{result['height2']} metres
At #{result['time3']} a height of #{result['height3']} metres
At #{result['time4']} a height of #{result['height4']} metres".colorize(:blue)
            end
        end

        def tide_user_input
            user_tide_selection = gets.chomp.downcase
                case user_tide_selection
                when "todays tide"
                    puts today_tide
                when "weekly tides"
                    puts week_tide
                else
                    puts "Please enter a valid selection !"
            end
        end
end

class AnchorageMenu < Menu
    
    def initialize(name,options)
        super
    end
end




