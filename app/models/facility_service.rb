class FacilityService < ActiveRecord::Base
  belongs_to :facility_branch
  belongs_to :service

end
