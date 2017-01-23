class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :country
      t.integer :film_genre
      t.integer :director
      t.text :actors
      t.text :desc
      t.text :comments
      t.text :reports

      t.timestamps
    end
  end
end
