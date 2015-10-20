class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.boolean :available
      t.string :additonal_notes

      t.timestamps null: false
    end
  end
end
