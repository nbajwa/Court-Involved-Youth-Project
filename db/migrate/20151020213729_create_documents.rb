class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.boolean :required
      t.string :listed_requirments
      t.integer :facility_branch_id

      t.timestamps null: false
    end
  end
end
