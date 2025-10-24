class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :name_en
      t.string :region
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
