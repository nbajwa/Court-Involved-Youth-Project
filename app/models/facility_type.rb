# == Schema Information
#
# Table name: facility_types
#
#  id         :integer          not null, primary key
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FacilityType < ActiveRecord::Base
  has_many :categories
  has_many :facilities




# def as_json(options={})
#   super,
#         :include => {
#           :facility => {:only => [:title]},
#           :include=> {:only => [:name]}
#         }
#   )
# end




end
