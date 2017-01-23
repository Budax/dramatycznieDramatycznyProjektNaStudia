class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :login
      t.string :password
      t.integer :role
      t.string :country

      t.timestamps
    end
  end
end
