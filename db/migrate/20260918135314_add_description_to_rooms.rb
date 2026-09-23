class AddDescriptionToRooms < ActiveRecord::Migration[7.2]
  def change
    add_column :rooms, :description, :text
  end
end
