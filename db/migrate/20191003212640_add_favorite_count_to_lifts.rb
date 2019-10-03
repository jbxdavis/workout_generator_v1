class AddFavoriteCountToLifts < ActiveRecord::Migration[5.1]
  def change
    add_column :lifts, :favorites_count, :integer
  end
end
