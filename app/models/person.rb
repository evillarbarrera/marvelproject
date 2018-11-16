class Person < ApplicationRecord
    
    def self.resetAll
        @people = Person.all
        @people.each do |people|
            people.update( :point => 0 , :won_fight => 0 , :lost_fight =>0)
        end 
    end    

    def self.revivirAll
        @people = Person.all
        @people.each do |people|
            people.update( :point => 0 , :won_fight => 0 , :lost_fight =>0)
         end  
    end     
         
 

end
