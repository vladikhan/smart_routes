class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text :bio
      t.string :image_url
      t.string :location
      t.string :budget_min
      t.integer :budget_max
      t.boolean :is_admin, default: false
      t.boolean :is_banned, default: false
      t.datetime :banned_at
      t.integer :banned_by
      t.text :ban_reason
      t.boolean :email_verified, default: false
      t.string :phone
      t.boolean :is_online, default: false
      t.datetime :last_seen_at
      t.string :langauge, default: 'ja'
      t.string :timezone, default: 'Asia/Tokyo'
      t.string :date_format
      t.datetime :username_last_changed_at

      t.timestamps
    end

    add_index :users, :username, unique: true
    add_index :users, :email, unique: true    
    add_index :users, :is_admin
  end
end
