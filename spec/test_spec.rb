require './main'
require './classes'

describe Menu do  
  subject(:main_menu) { Menu.new('main', menu_options)}
  it 'can be instantiated' do
    expect(main_menu).not_to be_nil 
    expect(main_menu).to be_instance_of Menu
  end
  it 'returns the array list' do
    expect(main_menu.display_menu).to eq menu_options
  end
end

describe Menu do  
  subject(:tide) { TideMenu.new('tide', tide_options)}
  it 'can be instantiated' do
    expect(tide).not_to be_nil 
    expect(tide).to be_instance_of Menu
  end
  it 'returns the array list' do
    expect(tide.display_menu).to eq tide_options
  end
end