class CreateMovieDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_directors do |t|
      t.references :movie, foreign_key: true
      t.references :director, foreign_key: true

      t.timestamps
    end
  end
end
