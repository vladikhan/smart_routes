class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :user_id, null: false, foreign_key: { to_table: :users } # 受信者
      t.references :actor_id, null: false, foreign_key: { to_table: :users } # 実行者
      t.string :notification_type, null: false # follow, like, comment, review
      t.string :entity_type   #Route, Venue, Review
      t.integer :entity_id
      t.boolean :is_read, default: false

      t.timestamps
    end

    add_foreign_key :notifications, :users, column: :user_id
    add_foreign_key :notifications, :users, column: :actor_id

    add_index :notifications, :user_id
    add_index :notification, [:entity_type, :entity_id]
    add_index :notifications, :is_read
  end
end
