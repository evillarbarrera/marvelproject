class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.string :mail
      t.integer :point
      t.integer :won_fight
      t.integer :lost_fight

      t.timestamps
    end
  end
end
