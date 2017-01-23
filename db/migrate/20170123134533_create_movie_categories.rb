class CreateMovieCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_categories do |t|
      t.string :cat_name

      t.timestamps
    end
  end
end
