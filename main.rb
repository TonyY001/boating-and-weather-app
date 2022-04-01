require 'csv'
require 'json'
require 'colorize'
require 'tty-font'
require 'tty-prompt'
require 'io/console'
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

#Variable containing list of main menu items in main menu list
menu_options = CSV.read('data_files/menu_list.csv')

#Variable containing list of tide menu items
tide_options = CSV.read('data_files/tide_menu.csv') 

#Variable containing list of anchorage menu items
anchorage_options = CSV.read('data_files/anchorage_menu.csv')

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
    main_menu.message

    #Prints main menu to screen
    puts main_menu.display_menu

    #Saves user selection into variable: user selection
    user_selection = gets.chomp.downcase

    #Case statement to process user selection
    case user_selection
        when menu_options[0][0].downcase
            weather
            continue
        when menu_options[0][1].downcase
            tide.message
            puts tide.display_menu
            tide.tide_user_input
            continue
        when menu_options[0][2].downcase
            anchorage.message
            puts anchorage.display_menu
            anchorage.calculate_anchorage
            continue
        when menu_options[0][3].downcase
            puts "update"
        when menu_options[0][4].downcase
            exit_message
            exit = true
        else
            puts "Please enter a valid selection !".colorize(:yellow)
    end

end