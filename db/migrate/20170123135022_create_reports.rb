class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.text :desc
      t.integer :user
      t.integer :actor
      t.integer :movie

      t.timestamps
    end
  end
end
