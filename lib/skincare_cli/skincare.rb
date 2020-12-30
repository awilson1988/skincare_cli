

class Skincare 

    @@all = [] 

    attr_accessor :brand, :name, :ingredient_list 

    def initialize(brand, name, ingredient_list) 
        @brand = brand 
        @name = name 
        @ingredient_list = ingredient_list 
        save
end 

def save 
    @@all << self 
end  

def self.all 
    @@all 
end 

def self.find_skincare(skincare)
    self.all.find do |
end