require'csv'
require 'json'
require 'colorize'

def weather
    weather_results = CSV.read('data_files/weather_data.csv', headers: true)
    weather_results.each do | result |
        puts "The weather for the #{result['day']} of #{result['month']}, #{result['year']}:".colorize(:light_green) 
        puts "The temperature is #{result['temperature']} degrees celsius
    The wind strength is #{result['wind strength']} knots
    The wind direction is #{result['wind direction']}
    The probability of rain is #{result['rain probability']}%
    The moon is #{result['moon']}% full
    The swell height is #{result['swell']} metres".colorize(:light_blue)
    end
end

def location_message
    puts "Taking into consideration the current wind direction, the best location to anchor is:".colorize(:light_green)
end

def anchor_message
    puts "To be safe, the minimum recommended length of anchor chain in metres to release is:".colorize(:light_green)
end

def long_lat
    puts "The latitude and longitude of this location is:".colorize(:light_green)
end

def calculate_anchorage
    location = JSON.load_file('data_files/anchorage_data.json', symbolize_names: true)
    weather_results_anchorage = CSV.read('data_files/weather_data.csv')
    wind_speed = weather_results_anchorage[1][4]
    wind_speed = wind_speed.to_i 
    wind_direction = weather_results_anchorage[1][5]
    wind_direction = wind_direction.chomp.downcase
    
    island = gets.chomp.downcase

    if island == "hook island" && wind_direction == "south" && wind_speed <= 10 
        print location_message 
        puts "#{location[0][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][0]} and #{location[0][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][0] * 3}".colorize(:light_blue)


    elsif island == "hook island" && wind_direction == "south" && wind_speed <= 20
        print location_message 
        puts "#{location[0][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][0]} and #{location[0][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][0] * 4}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "south" && wind_speed > 20
        print location_message 
        puts "#{location[0][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][0]} and #{location[0][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][0] * 5}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "west" && wind_speed <= 10
        print location_message 
        puts "#{location[0][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][1]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][1] * 3}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "west" && wind_speed <= 20
        print location_message 
        puts "#{location[0][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][1]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][1] * 4}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "west" && wind_speed > 20
        print location_message
        puts "#{location[0][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][1]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][1] * 5}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "north" && wind_speed <= 10
        print location_message
        puts "#{location[0][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][2]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][2] * 3}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "north" && wind_speed <= 20
        print location_message
        puts "#{location[0][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][2]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][2] * 4}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "north" && wind_speed > 20
        print location_message
        puts "#{location[0][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][2]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][2] * 5}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "east" && wind_speed <= 10
        print location_message
        puts "#{location[0][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][3]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][3] * 3}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "east" && wind_speed <= 20
        print location_message
        puts "#{location[0][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][3]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][3] * 4}".colorize(:light_blue)

    elsif island == "hook island" && wind_direction == "east" && wind_speed > 20
        print location_message
        puts "#{location[0][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[0][:latitude][3]} and #{location[0][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[0][:depth][3] * 5}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "south" && wind_speed <= 10
        print location_message
        puts "#{location[1][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][0]} and #{location[1][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][0] * 3}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "south" && wind_speed <= 20
        print location_message
        puts "#{location[1][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][0]} and #{location[1][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][0] * 4}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "south" && wind_speed > 20
        print location_message
        puts "#{location[1][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][0]} and #{location[1][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][0] * 5}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "west" && wind_speed <= 10
        print location_message
        puts "#{location[1][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][1]} and #{location[1][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][1] * 3}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "west" && wind_speed <= 20
        print location_message
        puts "#{location[1][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][1]} and #{location[1][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][1] * 4}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "west" && wind_speed > 20
        print location_message
        puts "#{location[1][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][1]} and #{location[1][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][1] * 5}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "north" && wind_speed <= 10
        print location_message
        puts "#{location[1][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][2]} and #{location[1][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][2] * 3}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "north" && wind_speed <= 20
        print location_message
        puts "#{location[1][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][2]} and #{location[1][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][2] * 4}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "north" && wind_speed > 20
        print location_message
        puts "#{location[1][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][2]} and #{location[1][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][2] * 5}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "east" && wind_speed <= 10
        print location_message
        puts "#{location[1][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][3]} and #{location[1][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][3] * 3}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "east" && wind_speed <= 20
        print location_message
        puts "#{location[1][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][3]} and #{location[1][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][3] * 4}".colorize(:light_blue)

    elsif island == "whitsunday island" && wind_direction == "east" && wind_speed > 20
        print location_message
        puts "#{location[1][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[1][:latitude][3]} and #{location[1][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[1][:depth][3] * 5}".colorize(:light_blue)
        

    elsif island == "long island" && wind_direction == "south" && wind_speed <= 10
        print location_message
        puts "#{location[2][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][0]} and #{location[2][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][0] * 3}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "south" && wind_speed <= 20
        print location_message
        puts "#{location[2][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][0]} and #{location[2][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][0] * 4}".colorize(:light_blue)
        
    elsif island == "long island" && wind_direction == "south" && wind_speed > 20
        print location_message
        puts "#{location[2][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][0]} and #{location[2][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][0] * 5}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "west" && wind_speed <= 10
        print location_message
        puts "#{location[2][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][1]} and #{location[2][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][1] * 3}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "west" && wind_speed <= 20
        print location_message
        puts "#{location[2][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][1]} and #{location[2][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][1] * 4}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "west" && wind_speed > 20
        print location_message
        puts "#{location[2][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][1]} and #{location[2][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][1] * 5}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "north" && wind_speed <= 10
        print location_message
        puts "#{location[2][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][2]} and #{location[2][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][2] * 3}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "north" && wind_speed <= 20
        print location_message
        puts "#{location[2][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][2]} and #{location[2][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][2] * 4}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "north" && wind_speed > 20
        print location_message
        puts "#{location[2][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][2]} and #{location[2][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][2] * 5}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "east" && wind_speed <= 10
        print location_message
        puts "#{location[2][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][3]} and #{location[2][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][3] * 3}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "east" && wind_speed <= 20
        print location_message
        puts "#{location[2][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][3]} and #{location[2][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][3] * 4}".colorize(:light_blue)

    elsif island == "long island" && wind_direction == "east" && wind_speed > 20
        print location_message
        puts "#{location[2][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[2][:latitude][3]} and #{location[2][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[2][:depth][3] * 5}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "south" && wind_speed <= 10
        print location_message
        puts "#{location[3][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][0]} and #{location[3][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][0] * 3}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "south" && wind_speed <= 20
        print location_message
        puts "#{location[3][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][0]} and #{location[3][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][0] * 4}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "south" && wind_speed > 20
        print location_message
        puts "#{location[3][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][0]} and #{location[3][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][0] * 5}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "west" && wind_speed <= 10
        print location_message
        puts "#{location[3][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][1]} and #{location[3][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][1] * 3}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "west" && wind_speed <= 20
        print location_message
        puts "#{location[3][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][1]} and #{location[3][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][1] * 4}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "west" && wind_speed > 20
        print location_message
        puts "#{location[3][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][1]} and #{location[3][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][1] * 5}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "north" && wind_speed <= 10
        print location_message
        puts "#{location[3][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][2]} and #{location[3][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][2] * 3}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "north" && wind_speed <= 20
        print location_message
        puts "#{location[3][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][2]} and #{location[3][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][2] * 4}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "north" && wind_speed > 20
        print location_message
        puts "#{location[3][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][2]} and #{location[3][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][2] * 5}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "east" && wind_speed <= 10
        print location_message
        puts "#{location[3][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][3]} and #{location[3][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][3] * 3}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "east" && wind_speed <= 20
        print location_message
        puts "#{location[3][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][3]} and #{location[3][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][3] * 4}".colorize(:light_blue)

    elsif island == "south molle island" && wind_direction == "east" && wind_speed > 20
        print location_message
        puts "#{location[3][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[3][:latitude][3]} and #{location[3][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[3][:depth][3] * 5}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "south" && wind_speed <= 10
        print location_message
        puts "#{location[4][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][0]} and #{location[4][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][0] * 3}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "south" && wind_speed <= 20
        print location_message
        puts "#{location[4][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][0]} and #{location[4][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][0] * 4}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "south" && wind_speed > 20
        print location_message
        puts "#{location[4][:anchorage][0]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][0]} and #{location[4][:longitude][0]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][0] * 5}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "west" && wind_speed <= 10
        print location_message
        puts "#{location[4][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][1]} and #{location[4][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][1] * 3}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "west" && wind_speed <= 20
        print location_message
        puts "#{location[4][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][1]} and #{location[4][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][1] * 4}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "west" && wind_speed > 20
        print location_message
        puts "#{location[4][:anchorage][1]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][1]} and #{location[4][:longitude][1]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][1] * 5}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "north" && wind_speed <= 10
        print location_message
        puts "#{location[4][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][2]} and #{location[4][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][2] * 3}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "north" && wind_speed <= 20
        print location_message
        puts "#{location[4][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][2]} and #{location[4][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][2] * 4}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "north" && wind_speed > 20
        print location_message
        puts "#{location[4][:anchorage][2]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][2]} and #{location[4][:longitude][2]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][2] * 5}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "east" && wind_speed <= 10
        print location_message
        puts "#{location[4][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][3]} and #{location[4][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][3] * 3}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "east" && wind_speed <= 20
        print location_message
        puts "#{location[4][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][3]} and #{location[4][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][3] * 4}".colorize(:light_blue)

    elsif island == "hamilton island" && wind_direction == "east" && wind_speed > 20
        print location_message
        puts "#{location[4][:anchorage][3]}".colorize(:light_blue)
        print long_lat
        puts "#{location[4][:latitude][3]} and #{location[4][:longitude][3]}".colorize(:light_blue)
        print anchor_message 
        puts "#{location[4][:depth][3] * 5}".colorize(:light_blue)

    else
        puts "Please enter a valid island".colorize(:yellow)
    end
end



