class CreateUserInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_inventories do |t|
      t.integer :user_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
