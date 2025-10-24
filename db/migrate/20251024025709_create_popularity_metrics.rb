class CreatePopularityMetrics < ActiveRecord::Migration[6.1]
  def change
    create_table :popularity_metrics do |t|
      t.string :entity_type
      t.integer :entity_id
      t.integer :view_count
      t.integer :like_count
      t.integer :save_count
      t.integer :comment_count
      t.integer :share_count
      t.integer :download_count
      t.integer :completion_count
      t.float :popularity_score
      t.float :trending_score
      t.integer :daily_views
      t.integer :weekly_views
      t.integer :monthly_views
      t.datetime :last_calculated_at

      t.timestamps
    end
  end
end
