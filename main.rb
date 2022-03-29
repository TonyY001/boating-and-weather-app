require 'csv'
require 'colorize'
require_relative 'classes.rb'
require_relative 'methods.rb'

#Variable containing list of main menu items in main menu list
menu_options = CSV.read('csvfiles/menu_list.csv') 

#Instance of Menu Class: main menu
main_menu = Menu.new("main", menu_options[0..5]) # main_menu = Menu.new("main", menu_options[0..5])

#Instance of Menu Class: tide menu
tide_menu = Menu.new("tide", menu_options[1][0..1])

#Prints enter a selection message below main menu
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
        puts tide_menu.message
        puts tide_menu.display_menu
    when menu_options[0][2].downcase
        puts "anchorage"
    when menu_options[0][3].downcase
        puts "update"
    when menu_options[0][4].downcase
        puts "help"
    when menu_options[0][5].downcase
        puts "exit"
    else
        puts "Please enter a valid selection"
    end