class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :website
      t.integer :facility_type_id

      t.timestamps null: false
    end
  end
end
