class Menu
    attr_accessor :name, :options
    attr_reader :message
    
    def initialize(name, options)
        @name = name
        @options = options
    end
    
    def display_menu
        @options.each_with_index do | option |
        return option
        end
    end

    def message
        return "Please enter an option from the list:"
    end
end