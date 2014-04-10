class AddCarIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :car_id, :integer
    add_index :components, :car_id
  end
end
