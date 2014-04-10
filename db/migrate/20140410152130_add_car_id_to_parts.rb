class AddCarIdToParts < ActiveRecord::Migration
  def change
    add_column :parts, :car_id, :integer
    add_index :parts, :car_id
  end
end
