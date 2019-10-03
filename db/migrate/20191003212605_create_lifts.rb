class CreateLifts < ActiveRecord::Migration[5.1]
  def change
    create_table :lifts do |t|
      t.integer :cooldown_hours
      t.string :name

      t.timestamps
    end
  end
end
