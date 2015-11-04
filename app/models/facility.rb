# == Schema Information
#
# Table name: facilities
#
#  id               :integer          not null, primary key
#  name             :string
#  website          :string
#  facility_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Facility < ActiveRecord::Base
  
end
