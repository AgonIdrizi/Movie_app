class RemovereferneceFromWatches < ActiveRecord::Migration[5.2]
  def change
  	remove_column :watches, :watched_id, :integer
    remove_column :watches, :watchlist_id, :integer
  end
end
