class CLI 

    def start  
        puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:magenta)
        puts "
        Hello and welcome to your virtual esthetician! Allow me to show you some skincare 
        
        products and you can select one that you would like to hear more about. 
        
        This is your first step on your way to gorgeous skin!".colorize(:green)
        puts "
        Let's get started! Who do I have the pleasure of assisting today?:".colorize(:green)
        API.get_data
        greet(user_input)
    end 

    def user_input 
        gets.strip 
    end 

    def greet(name) 
        puts " 
        Great! It's nice to meet you #{name}.".colorize(:cyan)
        puts " 
        Select 'y' to to see list of products 
        
        or select 'exit' if your skin is already perfect.".colorize(:cyan)
        menu 
    end 

    def products_list
        Skincare.all.each.with_index(1) do |product, i| 
            puts "" 
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:magenta)
            puts "#{i}. #{product.name}".colorize(:yellow)
            puts  "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:magenta)
            
            end
         products_selection 
        end 
    end

    def goodbye 
        puts "Have a beautiful day!".colorize(:green)
         
    end

    def invalid 
        puts "Oh dear...that dosen't seem to have worked! Try again?".colorize(:red)
        menu 
        
    end 

    def products_selection
            puts "" 
            puts "" 
            puts "Please select a product to learn more.".colorize(:green) 
            selection = user_input.to_i-1 
            
            product = Skincare.all[selection]
        
            product_details(product)
        
        end
  
    def product_details(product)
        puts ""   
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Brand: #{product.brand}".colorize(:green)
        puts ""
        puts "Name: #{product.name}".colorize(:green)  
        puts ""
        puts "Ingredient list:".colorize(:green) 
            product.ingredient_list.each do |ingredient|
                puts "- #{ingredient}".colorize(:green) 
           end
        menu
   end 

    def menu 
        selection = user_input 

        if selection == 'y'
            products_list
            
        elsif selection == 'exit' 
            goodbye
        else 
            invalid
        end
        
    end 


  
