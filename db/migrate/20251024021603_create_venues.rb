class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.references :district, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true # 作成者
      t.string :name, null: false
      t.string :venue_type, null: false
      t.string :address
      t.text :description
      t.string :cuisine_type
      t.string :price_range
      t.decimal :geo_lat, precision: 10, scale: 6
      t.decimal :geo_lng, precision: 10, scale: 6
      t.string :phone
      t.string :website
      t.text :business_hours
      t.integer :view_count, default: 0
      t.integer :save_count, default: 0
      t.float :popularity_score, default: 0.0
      t.boolean :is_featured, default: false
      t.integer :featured_order
      t.boolean :is_claimed, default: false
      t.datetime :claimed_at
      t.boolean :verified_business, default: false
      t.string :status, default: 'pending' # pending, approved, rejected
      t.integer :reviews_count, default: 0
      t.integer :likes_count, default: 0

      t.timestamps
    end

    add_index :venues, :name
    add_index :venues, :venue_type
    add_index :venues, :status
    add_index :venues, :is_featured
    add_index :venues, :popularity_score  
    add_index :venues, [:geo_lat, :geo_lng]
  end
end
