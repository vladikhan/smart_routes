class CreatePlaceOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :place_owners do |t|
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.string :role
      t.string :status
      t.datetime :verified_at
      t.integer :verified_by
      t.string :business_name
      t.string :contact_email
      t.string :contact_phone
      t.string :verification_document_url
      t.text :verification_notes

      t.timestamps
    end
  end
end
