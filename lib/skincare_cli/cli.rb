class CLI 

    def start 
        #API.get_data
        puts "Hello and welcome to your personal esthetician! 
        Need some advice on the best way to treat your skincare needs?"
        puts "Who do I have the pleasure of assisting today?:"
        API.get_data
        #binding.pry
        greet(user_input)
    end 

    def user_input 
        gets.strip 
    end 

    def greet(name) 
        puts "Great! It's nice to meet you #{name}."
        puts "Select 'y' to to see list of skintypes 
        or select 'exit' if your skin is already perfect."
        menu
    end 

    def skintype_list 
        ["Dry", "Oily","Acne-prone", "Normal","Combination","Sensitive"].each.with_index(1) do |skintype, i|
            puts "#{i}. #{skintype}"
    end 
    skincare_selection
end

    def goodbye 
        puts "Have a beautiful day!" 
    end

    def invalid 
        puts "Oh dear...that dosen't seem to have worked! Try again?"
        menu
    end 

    def skincare_selection 
        puts "Which skintype best describes your skin." 

        selection = user_input
    end

    def menu 
        selection = user_input 

        if selection == 'y'
            skintype_list
            menu
        elsif selection == 'exit' 
            goodbye
        else 
            invalid
        end

    end
  
end