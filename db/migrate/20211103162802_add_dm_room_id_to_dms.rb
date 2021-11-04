class AddDmRoomIdToDms < ActiveRecord::Migration[5.2]
  def change
    add_column :dms, :room_id, :integer
  end
end
