class Skincare 

    @@all = [] 

    attr_accessor :brand, :name, :ingredient_list 

def initialize(skincare_hash)
    skincare_hash.each do |k, v| 
        self.send("#{k}=", v) if self.respond_to?("#{k}=")
    end  
    save
end

def save 
    @@all << self 
end  

def self.all 
    @@all 
end 

def self.find_skincare(skincare_product)
    self.all.find do |skincare_product|
        skincare_product.name == skincare_product
        end 
    end 
end 