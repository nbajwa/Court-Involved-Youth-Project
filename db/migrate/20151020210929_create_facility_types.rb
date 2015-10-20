class CreateFacilityTypes < ActiveRecord::Migration
  def change
    create_table :facility_types do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
