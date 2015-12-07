# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "roo"


# ex = Roo::Spreadsheet.open('/public/data_court_involved_youth_project.xlsx')
ex = Roo::Excelx.new(Rails.root.join('db', 'communitydata.xlsx'))
puts ex.info
puts ex.sheets
# maybe too many facility types perhaps categories should be narrorwed.
# ex = Roo::Excelx.new('./public/data_court_involved_youth_project.xlsx')
ex.default_sheet = ex.sheets[1]
2.upto(41) do | line |
  name = ex.cell(line,'A')
  address = ex.cell(line,'B')
  category = ex.cell(line,'C') # facility_type_name
  telephone_number = ex.cell(line,'E')
  languages = ex.cell(line,'I')
  website = ex.cell(line,'J')
  payment_options= ex.cell(line,'Y')
  co_pay_requirment = ex.cell(line, 'Z') 
  co_payment_range = ex.cell(line,'AA')
  cta_bus_transit = ex.cell(line,'AM')
  cta_train_transit = ex.cell(line,'AN')
  parking = ex.cell(line,'AL')




    
  @facility_type = FacilityType.find_or_create_by(category: category.downcase)

  @facility = Facility.create(name: name, website: website, facility_type_id: @facility_type.id) 
  
  @facility_branch = FacilityBranch.create( address: address, telephone_number: telephone_number, languages: languages, payment_options: payment_options, co_pay_requirment: co_pay_requirment,cta_bus_transit: cta_bus_transit, cta_train_transit:cta_train_transit, parking: praking, facility_id: @facility.id)

  @documents = Document.create(facility_branch_id: @facility_branch.id)
    


end



