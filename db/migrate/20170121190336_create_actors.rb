class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :surname
      t.integer :country
      t.date :dateOfBirth
      t.date :dateOfDeath
      t.string :img
      t.text :films
      t.text :role

      t.timestamps
    end
  end
end
