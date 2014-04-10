class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :function
      t.string :color

      t.timestamps
    end
  end
end
