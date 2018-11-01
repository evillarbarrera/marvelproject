class BattleSerializer < ActiveModel::Serializer
  attributes :id, :date_fight, :result
  has_one :people
  has_one :characters
end
