require 'pry'
class CLI 

    def start  
        puts"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:yellow)
        puts "
        Hello and welcome to your personal esthetician!   

        Need some advice on the best way to treat your skincare concerns? 

        If you give me a little more information I can make some suggestions 
        
        on the best products and ingredients that can help you on your way to gorgeous skin!".colorize(:cyan)
        puts "
        Let's get started! Who do I have the pleasure of assisting today?:".colorize(:cyan)
        API.get_data
        #binding.pry
        greet(user_input)
    end 

    def user_input 
        gets.strip 
    end 

    def greet(name) 
        puts " 
        Great! It's nice to meet you #{name}."
        puts " 
        Select 'y' to to see list of products 
        
        or select 'exit' if your skin is already perfect."
        menu 
    end 

    def products_list
        Skincare.all.each.with_index(1) do |product, i| 
            puts "" 
            puts "" 
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~"
           
            puts "#{i}. #{product.name}" 
        end
         products_selection 
         end 
    end

    def goodbye 
        puts "Have a beautiful day!" 
    end

    def invalid 
        puts "Oh dear...that dosen't seem to have worked! Try again?"
        menu
    end 

    # how do we pass data from one method to another method 

    # def product_return
        
    #     if @selection == 'Dry'
    #        dry_skin_products
    #     elsif @selection == 'Oily/Acne-Prone' 
    #         oily_acne_products 
    #     elsif @selection == 'Combination' 
    #         combo_products 
    #     else @selection =='Sensitive' 
    #         sensitive_products 
    #     end

    # end

    # def dry_skin_products 
    #     puts ""
    #     puts "Select a product to learn more."
    #      dry_skin_products = [{"belif": "The True Cream Aqua Bomb"}, {"Cerave": "Hydrating Facial Cleanser"}, 
    #     {"Laneige": "Water Bank Gel Cream"}, {"Hada Labo": "Goku-Jun Serum"}, 
    #     {"Missha": "Geum Sul Skin Toner"}, {"Kiehl's": "Ultra Facial Cream Spf 30 "}] 
    #     dry_skin_products.each.with_index(1) do |product, i|
    #       product.each do |key, value| 
    #         puts "#{i}. #{key} - #{value}"
           
    #             end 
    #         end
    #     end
          
        
        #puts "For dry skin some ingredients to look for are Ceramides, Squalane or Hyaluronic Acid. 
        #These will help your skin retain moisture and rebuild your moisture barrier. 
       #Products such as..."
    

    # def oily_acne_products 
    #     oily_acne_products = [{"Missha": "Time Revolution Night Repair Turn Over Control Booster"}, 
    #     {"Sulwhasoo": "Concentrated Ginseng Renewing Cream"}, 
    #     {"Kiehl's": "Clearly Corrective Clarity Activating Toner"}, 
    #     {"Kiehl's": "Calendula Deep Clean Foaming Face Wash"}, 
    #     {"The Ordinary": "Natural Moisturising Factors + HA"},
    #     {"Sunday Riley": "U.F.O. Ultra Clarifying Face Oil"}]
    #     oily_acne_products.each.with_index(1) do |product, i|
    #         product.each do |key, value| 
    #           puts "#{i}. #{key} - #{value}"
             
    #               end 
    #           end
    #       end
    # def combo_products 
    #    combo_products = [{"Belif": "Witch Hazel Herbal Extract Toner"}, 
    #     {"Mario Badescu": "Seaweed Cleansing Lotion"}, {"Cosrx": "AHA 7 Whitehead Power Liquid"},  
    #     {"Etude House": "Berry AHA Bright Peel Sleeping Pack"}, 
    #    {"Cosrx": "Natural BHA Skin Returning A-Sol Toner"}] 
    #    combo_products.each.with_index(1) do |product, i|
    #     product.each do |key, value| 
    #       puts "#{i}. #{key} - #{value}" 

    #         end 
    #     end
    # end
    # def sensitive_products 
    #    sensitive_products = [{"Cosrx": "Aloe Vera Oil-Free Moisture Cream"}, 
    #     {"Mario Badescu": "Aloe Vera Toner"}, {"Holika Holika": "Don't Worry Bee Care Toner"},
    #     {"Kiehl's": "Calendula Deep Clean Foaming Face Wash"}, 
    #     {"Sunday Riley": "Martian Mattifying Melting Water Gel Toner"}, {"Alaffia": "Balancing Day Cream"}] 
    #     combo_products.each.with_index(1) do |product, i|
    #         product.each do |key, value| 
    #           puts "#{i}. #{key} - #{value}" 
    
    #             end 
    #         end
    #     end 

        def products_selection
            puts "Select a product to learn more." 
            selection = user_input.to_i-1 
            
            product = Skincare.all[selection] 
        
            product_details(product)
        end
  
        
   

   def product_details(product)
        puts "Brand: #{product.brand}"
        puts "Name: #{product.name}" 
        puts "Ingredient list: #{product.ingredient_list.join(", ")}"
        #binding.pry
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


  

