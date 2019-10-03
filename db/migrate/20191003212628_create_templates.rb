class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.integer :sets
      t.string :reps
      t.string :name

      t.timestamps
    end
  end
end
