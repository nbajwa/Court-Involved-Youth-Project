# == Schema Information
#
# Table name: documents
#
#  id                 :integer          not null, primary key
#  required           :boolean
#  listed_requirments :string
#  facility_branch_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Document < ActiveRecord::Base
end
