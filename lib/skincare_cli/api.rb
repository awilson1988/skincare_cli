class API 

    def self.get_data 
    response = RestClient.get('https://skincare-api.herokuapp.com/products/')
    products_array = JSON.parse(response)[0..19]  
    
    products_array.each do |product| 
       Skincare.new(product) 
        end
        
      end
    
    end   
 
