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
  puts "Thankyou for choosing the Whitsunday Weather and Boating Guide! Be safe and have fun out on the water!!".colorize(:yellow)
end

def update_weather
  weather_data_update = CSV.open('data_files/weather_data.csv', 'w', headers: true)
end








