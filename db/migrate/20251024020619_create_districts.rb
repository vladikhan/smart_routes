class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name
      t.string :name_en
      t.text :description

      t.timestamps
    end
  end
end
