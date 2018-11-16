class Battle < ApplicationRecord
  belongs_to :people , optional: true
  belongs_to :characters , optional: true
	after_save :update_person_point

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
	

	
	def update_person_point
		people = Person.find(self.people_id)
		
		if Battle.resultado
				won = people.won_fight
				lost = people.lost_fight + 1 
				point = people.point - 1
			else
				won = people.won_fight + 1
				lost = people.lost_fight
				point = people.point + 1
		end

    people.update!(point: point, won_fight: won, lost_fight: lost )
	end



end
