class CreateMgTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :mg_targets do |t|
      t.integer :mg_id
      t.integer :lift_id

      t.timestamps
    end
  end
end
