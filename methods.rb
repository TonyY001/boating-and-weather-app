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

def continue                                                                                                              
  print "Press Any Key To Continue".colorize(:light_red)                                                                                                    
  STDIN.getch                                                                                                              
  print "\r"                                                                                                            
end  

def exit_message
  puts "Thankyou for choosing the Whitsunday Weather and Boating Guide! Have fun out on the water!!".colorize(:yellow)
end


# def anchor_length(wind_speed,depth)
#     if wind_speed <= 10 
#      return depth * 3
#     elsif wind_speed <= 20  
#      return depth * 4
#     else wind_speed > 20  
#      return depth * 5
#     end
# end

# def calculate_anchorage

#     location = JSON.load_file('data_files/anchorage_data.json', symbolize_names: true)
#     weather_results_anchorage = CSV.read('data_files/weather_data.csv')
#     wind_speed = weather_results_anchorage[1][4]
#     wind_speed = wind_speed.to_i 
#     wind_direction = weather_results_anchorage[1][5]
#     wind_direction = wind_direction.chomp.downcase

#     island = gets.chomp.downcase

#     case island
#     when "hook island"
#         data = location[0]
#     when "whitsunday island"
#         data = location[1]
#     when "long island"
#         data = location[2]
#     when "south molle island"
#         data = location[3]
#     when "hamilton_island"
#         data = location[4]
#     end

#     if wind_direction == "south"
#         anchorage = data[:anchorage][0]
#         longitude = data[:longitude][0]
#         latitude = data[:latitude][0]
#         depth = data[:depth][0]

#     elsif wind_direction == "west"
#         anchorage = data[:anchorage][1]
#         longitude = data[:longitude][1]
#         latitude = data[:latitude][1]
#         depth = data[:depth][1]

#     elsif wind_direction == "north"
#         anchorage = data[:anchorage][2]
#         longitude = data[:longitude][2]
#         latitude = data[:latitude][2]
#         depth = data[:depth][2]

#     elsif wind_direction == "east"
#         anchorage = data[:anchorage][3]
#         longitude = data[:longitude][3]
#         latitude = data[:latitude][3]
#         depth = data[:depth][3]
#     end

#     # anchor_length(wind_speed,depth)

#     def anchor_length(wind_speed,depth)
#     if wind_speed <= 10 
#      return depth * 3
#     elsif wind_speed <= 20  
#      return depth * 4
#     else wind_speed > 20  
#      return depth * 5
#     end
# end

#     puts "Taking into consideration the current weather conditions, the best place to anchor is #{anchorage}"
#     puts "To be safe, the minimum recommended length of anchor chain in metres to release is #{anchor_length(wind_speed, depth)} metres"
#     puts "The latitude of this location is #{latitude}, and the longitude is #{longitude}"

# end




