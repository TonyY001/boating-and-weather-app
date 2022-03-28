require 'csv'
require_relative 'classes.rb'
require_relative 'methods.rb'
require_relative 'variables.rb'

#Variable containing list of main menu items in main menu list
main_menu_options = CSV.read('main_menu_list.csv') 
#Instance of Menu class: main menu
main_menu = Menu.new("main", main_menu_options[0..5])

#Prints main menu to screen
puts main_menu.display_menu
#Prints enter a selection message below main menu
puts main_menu.message
#Saves user selection into variable: user selection
user_selection = gets.chomp.downcase
#Case statement to process user input
case user_selection
    when menu_options[0][0].downcase
        weather
    when menu_options[0][1].downcase
        puts "tide"
    when menu_options[0][2].downcase
        puts "anchorage"
    when menu_options[0][3].downcase
        puts "update"
    when menu_options[0][4].downcase
        puts "help"
    when menu_options[0][5].downcase
        user_wants_to_continue = false
    else
        puts "Please enter a valid selection"
    end