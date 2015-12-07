# == Schema Information
#
# Table name: facility_branches
#
#  id                :integer          not null, primary key
#  latitude          :float
#  longitude         :float
#  telephone_number  :string
#  payment_options   :string
#  co_pay_requirment :boolean
#  co_payment_range  :string
#  cta_bus_transit   :string
#  cta_train_transit :string
#  parking           :string
#  facility_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class FacilityBranch < ActiveRecord::Base
  
  geocoded_by :address
  after_validation :geocode  
  belongs_to :facility 
  has_many :documents 
  has_many :services, through :facility_services

end
