#Variable containing list of main menu items in 
main_menu_options = CSV.read('main_menu_list.csv') 

main_menu = Menu.new("main", main_menu_options[0..5])
