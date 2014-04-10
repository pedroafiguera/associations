class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :material
      t.string :purpose

      t.timestamps
    end
  end
end
