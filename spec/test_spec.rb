require './main.rb'
require './classes.rb'

describe Menu do  
    it 'can be instantiated' do
        main_menu = Menu.new("main", ["Find Weather Information","Find Tide Information","Find an Anchorage","Provide an Update","Quit Program"]) 
    end

end