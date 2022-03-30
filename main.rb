require 'csv'
require 'json'
require 'colorize'
require 'tty-font'
require 'tty-prompt'
require_relative 'classes.rb'
require_relative 'methods.rb'

#Initialised variable to hold banner font
font = TTY::Font.new(:standard) 
#Initialised variable to hold banner color
font_color = Pastel.new 

#ASCII banner
puts font_color.bright_blue(font.write("Welcome to"))     
puts font_color.bright_blue(font.write("the Whitsunday"))
puts font_color.bright_blue(font.write("Weather and"))
puts font_color.bright_blue(font.write("Boating Guide"))

#Variable containing JSON data for anchorages
location = JSON.load_file('data_files/anchorage_data.json', symbolize_names: true)

#Variable containing list of main menu items in main menu list
menu_options = CSV.read('data_files/menu_list.csv')

#Variable containing list of tide menu items
tide_options = CSV.read('data_files/tide_menu.csv') 

#Variable containing list of anchorage menu items
anchorage_options = CSV.read('data_files/anchorage_menu.csv')

#Variable containing list of current weather
weather_results_anchorage = CSV.read('data_files/weather_data.csv')

#Variables containing data for anchorage calculation
wind_strength = weather_results_anchorage[1][4] 
wind_speed = weather_results_anchorage[1][5] 

#Instance of Menu Class: main menu
main_menu = Menu.new("main", menu_options) 

#Instance of TideMenu, subclass of Menu Class
tide = TideMenu.new("tide", tide_options)

#Instance of AnchorageMenu, subclass of Menu Class
anchorage = AnchorageMenu.new("anchorage", anchorage_options)

#While loop to keep program running until user selects exit
exit = false
while exit == false

    #Prints enter a selection message 
    puts main_menu.message

    #Prints main menu to screen
    puts main_menu.display_menu

    #Saves user selection into variable: user selection
    user_selection = gets.chomp.downcase

    #Case statement to process user selection
    case user_selection
        when menu_options[0][0].downcase
            weather
        when menu_options[0][1].downcase
            puts tide.message
            puts tide.display_menu
            puts tide.tide_user_input
        when menu_options[0][2].downcase
            puts anchorage.message
            puts anchorage.display_menu
            calculate_anchorage
        when menu_options[0][3].downcase
            puts "update"
        when menu_options[0][4].downcase
            puts "help"
        when menu_options[0][5].downcase
            exit = true
        else
            puts "Please enter a valid selection"
    end

end