class CreateEquipmentRequirements < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment_requirements do |t|
      t.integer :lift_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
