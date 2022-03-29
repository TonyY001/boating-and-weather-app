require'csv'
require 'colorize'

def weather
    weather_results = CSV.read('csvfiles/weather_data.csv', headers: true)
    weather_results.each do | result |
        puts "The weather for the #{result['day']} of #{result['month']}, #{result['year']}: 
    The temperature is #{result['temperature']} degrees celsius
    The wind strength is #{result['wind strength']} knots
    The wind direction is #{result['wind direction']}
    The probability of rain is #{result['rain probability']}%
    The moon is #{result['moon']}% full
    The swell height is #{result['swell']} metres"
    end
end

def today_tide
    tides = CSV.read('csvfiles/tide_data.csv')
    todays_tide = tides[1][3..10]
        puts "The tides for today are:".colorize(:red)
        puts "At #{todays_tide[0]} a height of #{todays_tide[1]} metres
At #{todays_tide[2]} a height of #{todays_tide[3]} metres
At #{todays_tide[4]} a height of #{todays_tide[5]} metres
At #{todays_tide[6]} a height of #{todays_tide[7]} metres".colorize(:blue)
end

def week_tide
    puts "The tides for the following week are:".colorize(:red)
    tides = CSV.read('csvfiles/tide_data.csv', headers: true)
    tides.each do |result|
        puts "#{result['month']} #{result['day']}, #{result['year']}:".colorize(:yellow) 
        puts "At #{result['time1']} a height of #{result['height1']} metres
At #{result['time2']} a height of #{result['height2']} metres
At #{result['time3']} a height of #{result['height3']} metres
At #{result['time4']} a height of #{result['height4']} metres".colorize(:blue)
    end
end


