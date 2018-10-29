json.extract! person, :id, :name, :surname, :address, :mail, :point, :won_fight, :lost_fight, :created_at, :updated_at
json.url person_url(person, format: :json)
