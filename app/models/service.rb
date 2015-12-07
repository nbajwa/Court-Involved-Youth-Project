# == Schema Information
#
# Table name: services
#
#  id              :integer          not null, primary key
#  name            :string
#  available       :boolean
#  additonal_notes :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Service < ActiveRecord::Base
  has_many :facility_branches, through :facility_services


def boolean_to_words(value)
  value ? "Yes" : "No"
end



end
