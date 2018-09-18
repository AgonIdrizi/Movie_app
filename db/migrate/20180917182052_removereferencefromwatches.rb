class Removereferencefromwatches < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :watches, :type, foreign_key: true
  end
end
