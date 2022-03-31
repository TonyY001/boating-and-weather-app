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
        puts "Please enter an option from the list:".colorize(:light_red)
    end
end

class TideMenu < Menu
    
        def initialize(name,options)
            super
        end

        def today_tide
            tides = CSV.read('data_files/tide_data.csv')
            todays_tide = tides[1][3..10]
                puts "The tides for today are:".colorize(:light_red)
                puts "At #{todays_tide[0]} a height of #{todays_tide[1]} metres
                      At #{todays_tide[2]} a height of #{todays_tide[3]} metres
                      At #{todays_tide[4]} a height of #{todays_tide[5]} metres
                      At #{todays_tide[6]} a height of #{todays_tide[7]} metres".colorize(:light_blue)
        end

        def week_tide
            puts "The tides for the following week are:".colorize(:light_red)
            tides = CSV.read('data_files/tide_data.csv', headers: true)
            tides.each do |result|
                puts "#{result['month']} #{result['day']}, #{result['year']}:".colorize(:light_green) 
                puts "At #{result['time1']} a height of #{result['height1']} metres
                      At #{result['time2']} a height of #{result['height2']} metres
                      At #{result['time3']} a height of #{result['height3']} metres
                      At #{result['time4']} a height of #{result['height4']} metres".colorize(:light_blue)
            end
        end

        def tide_user_input
            user_tide_selection = gets.chomp.downcase
                case user_tide_selection
                when "todays tide"
                    today_tide
                when "weekly tides"
                    week_tide
                else
                    puts "Please enter a valid selection !"
            end
        end
end

class AnchorageMenu < Menu
    
    def initialize(name,options)
        super
    end

    def anchor_length(wind_speed,depth)
        if wind_speed <= 10 
            return depth * 3
        elsif wind_speed <= 20  
            return depth * 4
        else wind_speed > 20  
            return depth * 5
        end
    end

    def calculate_anchorage

        location = JSON.load_file('data_files/anchorage_data.json', symbolize_names: true)
        weather_results_anchorage = CSV.read('data_files/weather_data.csv')
        wind_speed = weather_results_anchorage[1][4]
        wind_speed = wind_speed.to_i 
        wind_direction = weather_results_anchorage[1][5]
        wind_direction = wind_direction.chomp.downcase

        island = gets.chomp.downcase

        case island
        when "hook island"
            data = location[0]
        when "whitsunday island"
            data = location[1]
        when "long island"
            data = location[2]
        when "south molle island"
            data = location[3]
        when "hamilton_island"
            data = location[4]
        end

        if wind_direction == "south"
            anchorage = data[:anchorage][0]
            longitude = data[:longitude][0]
            latitude = data[:latitude][0]
            depth = data[:depth][0]

        elsif wind_direction == "west"
            anchorage = data[:anchorage][1]
            longitude = data[:longitude][1]
            latitude = data[:latitude][1]
            depth = data[:depth][1]

        elsif wind_direction == "north"
            anchorage = data[:anchorage][2]
            longitude = data[:longitude][2]
            latitude = data[:latitude][2]
            depth = data[:depth][2]

        elsif wind_direction == "east"
            anchorage = data[:anchorage][3]
            longitude = data[:longitude][3]
            latitude = data[:latitude][3]
            depth = data[:depth][3]
        end

        def anchor_length(wind_speed,depth)
            if wind_speed <= 10 
            return depth * 3
            elsif wind_speed <= 20  
            return depth * 4
            else wind_speed > 20  
            return depth * 5
            end
        end

        puts "Taking into consideration the current weather conditions, the best place to anchor is:".colorize(:light_green)
        puts "#{anchorage}".colorize(:light_blue)
        puts "To be safe, the minimum recommended length of anchor chain to release is:".colorize(:light_green)
        puts "#{anchor_length(wind_speed, depth)} metres".colorize(:light_blue)
        puts "The GPS coordinates of this location are:".colorize(:light_green)
        puts "Latitude #{latitude}, and longitude #{longitude}".colorize(:light_blue)

    end
end




