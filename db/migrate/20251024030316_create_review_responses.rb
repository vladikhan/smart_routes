class CreateReviewResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :review_responses do |t|
      t.references :review, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
