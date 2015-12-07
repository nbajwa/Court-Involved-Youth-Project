class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :substance_abuse_treatment_available
      t.string :sexual_reproductive_health_care_available
      t.string :hiv_testing_available
      t.string :mental_health_care_available
      t.string :sti_testing_available
      t.string :general_practice_care_available
      t.string :dental_available
      t.string :vision_available
      t.string :abortion_services_available
      t.string :prenatal_healthcare_available
      t.string :prescribe_psychiatric_medication_available 
      t.string :preventitive_care_available
      t.string :preventitive_care
      t.string :pharmacy
      
      t.timestamps null: false
    end
  end
end







