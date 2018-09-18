class AddColumnToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :watched_id, :integer
    add_column :watches, :watchlist_id, :integer
  end
end
