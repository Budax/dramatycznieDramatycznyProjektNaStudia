class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :user
      t.integer :movie
      t.integer :actor

      t.timestamps
    end
  end
end
