class AddAddressToFacilityBranches < ActiveRecord::Migration
  def change
    add_column :facility_branches, :address, :string
  end
end
