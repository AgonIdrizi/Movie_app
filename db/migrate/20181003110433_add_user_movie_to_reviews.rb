class AddUserMovieToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :movie, foreign_key: true
  end
end
