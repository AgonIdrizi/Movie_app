class ChangeTableMovies < ActiveRecord::Migration[5.2]
  def change
  	change_table :movies do |t|
  t.remove :description
  
end
  end
end
