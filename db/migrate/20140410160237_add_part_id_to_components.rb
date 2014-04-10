class AddPartIdToComponents < ActiveRecord::Migration
  def change
    add_column :components, :part_id, :integer
    add_index :components, :part_id
  end
end
