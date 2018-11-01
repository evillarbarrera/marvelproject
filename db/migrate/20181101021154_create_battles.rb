class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.references :people, foreign_key: true
      t.references :characters, foreign_key: true
      t.datetime :date_fight
      t.boolean :result

      t.timestamps
    end
  end
end
