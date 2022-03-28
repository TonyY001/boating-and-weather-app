def weather
    weather_results = CSV.read('weather.csv', headers: true)
    weather_results.each do | result |
        puts "The weather for the #{result['date']} of #{result['month']}, #{result['year']}: 
    The temperature is #{result['temperature']} degrees celsius
    The wind strength is #{result['wind strength']} knots
    The wind direction is #{result['wind direction']}
    The probability of rain is #{result['rain probability']}%
    The moon is #{result['moon']}% full
    The swell height is #{result['swell']} metres"
    end
end