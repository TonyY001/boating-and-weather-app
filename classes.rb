class Menu
    attr_accessor :name, :options
    attr_reader :message
    
    def initialize(name, options)
        @name = name
        @options = options
    end
    
    def display_menu
        @options.each do | option |
        return option
        end
    end

    def message
        return "Please enter an option from the list:".colorize(:blue)
    end
end