class AddRatingToRooms < ActiveRecord::Migration[7.2]
  def change
    add_column :rooms, :rating, :integer
  end
end
