require './main.rb'
require './classes.rb'

describe Menu do  
    subject(:main_menu) { Menu.new("main", menu_options)}
    it 'can be instantiated' do
        expect(main_menu).not_to be_nil 
        expect(main_menu).to be_instance_of Menu
    end
    it 'returns the array list' do
        expect(main_menu.display_menu).to eq menu_options
    end

end