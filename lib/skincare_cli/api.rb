require 'pry'
class API 

    def self.get_data 
    response = RestClient.get('https://skincare-api.herokuapp.com/products')
    skincare_array = JSON.parse(response) 
    skincare_array.each do |skincare| 
        Skincare.new(skincare) 
      end
    #binding.pry
    end
end