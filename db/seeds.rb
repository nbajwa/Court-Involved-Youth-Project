# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "roo"

# ex = Roo::Spreadsheet.open('/public/data_court_involved_youth_project.xlsx')
ex = Roo::Excelx.new("../public/data_court_involved_youth_project.xlsx")
#maybe too many facility types perhaps categories should be narrorwed.
# ex = Roo::Excelx.new('./public/data_court_involved_youth_project.xlsx')
ex.default_sheet = ex.sheets[0]
2.upto(41) do | line |
  name = ex.cell(line,'B')
  street_address = ex.cell(line,'C ')
  category = ex.cell(line,'D') # facility_type_name
  telephone_number = ex.cell(line,'F')
  languages = ex.cell(line,'I')
  website = ex.cell(line,'J')



    
@facility_type = FacilityType.find_or_create_by(category: category.downcase)

  @facility = Facility.create(name: name, website: website, facility_type_id: @facility_type.id) 
end
   


