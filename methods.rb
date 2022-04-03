require'csv'
require 'colorize'

def weather
  weather_results = CSV.read('data_files/weather_data.csv', headers: true)
  weather_results.each do | result |
      return "The weather for the #{result['day']} of #{result['month']}, #{result['year']}:
        The temperature is #{result['temperature']} degrees celsius
    The wind strength is #{result['wind strength']} knots
    The wind direction is #{result['wind direction']}
    The probability of rain is #{result['rain probability']}%
    The moon is #{result['moon']}% full
    The swell height is #{result['swell']} metres".colorize(:light_blue)
    end
end

def continue                                                                                                              
  print 'Press Any Key To Continue'.colorize(:light_red)                                                                                                    
  STDIN.getch                                                                                                              
  print "\r"                                                                                                            
end  

def exit_message
  puts "Thankyou for choosing the Whitsunday Weather and Boating Guide! Be safe and have fun out on the water!!".colorize(:yellow)
end

def update_weather
  new_data = []
  puts 'Enter Date'.colorize(:yellow)
  day = gets.chomp.downcase
  new_data.push(day)
  puts 'Enter Month'.colorize(:yellow)
  month = gets.chomp.capitalize
  new_data.push(month)
  puts 'Enter Year'.colorize(:yellow)
  year = gets.chomp.capitalize
  new_data.push(year)
  puts 'Enter Temperature in degrees:'.colorize(:yellow)
  temperature = gets.chomp
  new_data.push(temperature)
  puts 'Enter wind strength in knots:'.colorize(:yellow)
  wind_strength = gets.chomp
  new_data.push(wind_strength)
  puts 'Enter wind direction:'.colorize(:yellow)
  wind_direction = gets.chomp
  new_data.push(wind_direction)
  puts 'Enter rain probability as a percentage:'.colorize(:yellow)
  rain_probability = gets.chomp
  new_data.push(rain_probability)
  puts 'Enter moon size as a percentage:'.colorize(:yellow)
  moon = gets.chomp
  new_data.push(moon)
  puts 'Enter swell height in metres:'.colorize(:yellow)
  swell = gets.chomp
  new_data.push(swell)

  weather_data_update = CSV.open('data_files/weather_data.csv', 'a') do | data |
    data << new_data
  end
end

def help
  puts 'Help Menu'.colorize(:yellow)
  puts "To use the Main Menu:".colorize(:light_green)
  puts 'From the dropwdown list, enter the selection of your choice. Your choice must match one from the list or you will have 
  to start again. To quit the program type quit program.'.colorize(:light_blue)
  puts 'To view todays weather:'.colorize(:light_green)
  puts "Enter 'find weather information' and the results will be displayed, hit any key to continue.".colorize(:light_blue)
  puts 'To find tide information:'.colorize(:light_green)
  puts "Enter 'find tide information', make your choice between todays tide and weekly tide, enter 'todays tide.' 
  or 'weekly tides', view the results and hit any key to continue".colorize(:light_blue)
  puts 'To find an anchorage:'.colorize(:light_green)
  puts "Enter 'find an anchorage', a list will appear containing islands with available information. Input an island from the 
  list, and view the results.".colorize(:light_blue)
  puts 'To update weather:'.colorize(:light_green)
  puts 'This is an advanced feature, leave this one alone !'.colorize(:light_blue)
  puts 'To access help menu:'.colorize(:light_green)
  puts 'Thats where we are !'.colorize(:light_blue)
  puts 'To quit the program:'.colorize(:light_green)
  puts "Type 'quit program' :)".colorize(:light_blue)
end










