class AddNameAndAddressToRooms < ActiveRecord::Migration[7.2]
  def change
    add_column :rooms, :name, :string
    add_column :rooms, :address, :string
  end
end
