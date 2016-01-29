class CreateFacilityBranches < ActiveRecord::Migration
  def change
    create_table :facility_branches do |t|
      t.float :latitude
      t.float :longitude
      t.string :languages
      t.string :telephone_number
      t.string :payment_options
      t.boolean :co_pay_requirment
      t.string :co_payment_range
      t.string :cta_bus_transit
      t.string :cta_train_transit
      t.string :parking 
      t.string :additonal_notes
      t.integer :facility_id
      t.string :undocumented_youth_requirments

      t.timestamps null: false
    end
  end
end
