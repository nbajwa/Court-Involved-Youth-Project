class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.boolean :substance_abuse_treatment_available
      t.boolean :sexual_reproductive_health_care_available
      t.boolean :hiv_testing_available
      t.boolean :mental_health_care_available
      t.boolean :sti_testing_available
      t.boolean :general_practice_care_available
      t.boolean :dental_available
      t.boolean :vision_available
      t.boolean :abortion_services_available
      t.boolean :prenatal_healthcare_available
      t.boolean :prescribe_psychiatric_medication_available 
      t.boolean :preventitive_care_available
      t.string  :preventitive_care
      t.string  :pharmacy
      
      t.timestamps null: false
    end
  end
end







