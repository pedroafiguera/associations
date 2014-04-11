class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :driver_id
      t.integer :car_id
      t.timestamps
    end
    add_index :routes, :driver_id
    add_index :routes, :car_id
  end
end
