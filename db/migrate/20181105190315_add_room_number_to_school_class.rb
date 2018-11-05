class AddRoomNumberToSchoolClass < ActiveRecord::Migration
  def change
    t.integer :room_number
  end
end
