class CreateReviewImages < ActiveRecord::Migration[6.1]
  def change
    create_table :review_images do |t|
      t.references :review, null: false, foreign_key: true
      t.string :image_url
      t.integer :position

      t.timestamps
    end
  end
end
