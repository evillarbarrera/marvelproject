class Battle < ApplicationRecord
  belongs_to :people , optional: true
  belongs_to :characters , optional: true

  def self.resultado
		random_boolean = [true, false].sample
  end


  def self.fecha
		fecha = Time.now.to_date
  end
  

	def self.getCharacterBattle
		personaje = Battle.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).last
	    if personaje.nil?
	      code = Character.first
	      code = code.id
	    else
	      code = personaje.characters_id
	      code = code +1
	    end
		return code
	
		
  end
  
end
