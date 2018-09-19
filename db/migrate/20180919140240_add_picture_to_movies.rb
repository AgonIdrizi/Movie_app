class AddPictureToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :picture, :string
  end
end
