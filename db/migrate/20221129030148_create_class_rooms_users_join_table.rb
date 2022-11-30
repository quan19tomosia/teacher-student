class CreateClassRoomsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :class_rooms_users, primary_key: [:user_id, :class_room_id] do |t|
      t.belongs_to :user
      t.belongs_to :class_room
    end
  end
end