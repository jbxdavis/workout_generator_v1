class ChangeCooldownHoursDefaultValueInLifts < ActiveRecord::Migration[5.1]
  def change
    change_column_default :lifts, :cooldown_hours, '20'
  end
end
