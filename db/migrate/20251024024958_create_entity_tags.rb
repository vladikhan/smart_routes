class CreateEntityTags < ActiveRecord::Migration[6.1]
  def change
    create_table :entity_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.string :entity_type, null: false  # 'Route', 'Venue', 'User'
      t.integer :entity_id, null: false

      t.timestamps
    end

    add_index :entity_tags, [:entity_type, :entity_id]
    add_index :entity_tags, [:tag_id, :entity_type, :entity_id], unique: true, name: 'index_entity_tags_unique'
  end
end
