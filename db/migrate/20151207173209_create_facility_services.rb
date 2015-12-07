class CreateFacilityServices < ActiveRecord::Migration
  def change
    create_table :facility_services do |t|
      t.integer :facility_branch_id
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
