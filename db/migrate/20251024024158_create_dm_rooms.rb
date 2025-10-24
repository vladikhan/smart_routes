class CreateDmRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :dm_rooms do |t|
      t.references :sender_id, null: false, foreign_key: { to_table: :users }
      t.references :receiver_id, null: false, foreign_key: { to_table: :users }
      t.datetime :last_message_at

      t.timestamps
    end

    add_foreign_key :dm_rooms, :users, column: :sender_id
    add_foreign_key :dm_rooms, :users, column: :receiver_id

    add_index :dm_rooms, [:sender_id, :receiver_id], unique: true
  end
end
