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
  hours = ex.cell(line,'D')
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
  required = ex.cell(line,'G')
  listed_requirments = ex.cell(line,'F')
  undocumented_youth_requirments = ex.cell(line,'AJ')
  additonal_notes = ex.cell(line,'AK')
  substance_abuse_treatment_available = ex.cell(line,'K')
  sexual_reproductive_health_care_available = ex.cell(line,'L')
  hiv_testing_available = ex.cell(line,'M')
  sti_testing_available = ex.cell(line,'N')
  general_practice_care_available = ex.cell(line,'O')
  dental_available = ex.cell(line,'P')
  vision_available = ex.cell(line,'Q')
  abortion_services_available = ex.cell(line,'R')
  prenatal_healthcare_available = ex.cell(line,'S')
  mental_health_care_available = ex.cell(line,'T')
  prescribe_psychiatric_medication_available = ex.cell(line,'U')
  preventitive_care_available = ex.cell(line,'V')
  preventitive_care = ex.cell(line,'W')
  pharmacy = ex.cell(line,'X')




    
  @facility_type = FacilityType.find_or_create_by(category: category.downcase)

  @facility = Facility.create(name: name, website: website, facility_type_id: @facility_type.id) 
  
  @facility_branch = FacilityBranch.create(address: address, telephone_number: telephone_number, languages: languages, payment_options: payment_options, co_pay_requirment: co_pay_requirment, cta_bus_transit: cta_bus_transit, cta_train_transit: cta_train_transit, parking: parking, facility_id: @facility.id)

  @documents = Document.create(listed_requirments: listed_requirments, required: required, facility_branch_id: @facility_branch.id)

  @facility_branch.services.create(substance_abuse_treatment_available: substance_abuse_treatment_available, sexual_reproductive_health_care_available: sexual_reproductive_health_care_available, hiv_testing_available:hiv_testing_available, sti_testing_available: sti_testing_available, general_practice_care_available: general_practice_care_available, dental_available: dental_available, vision_available: vision_available, abortion_services_available: abortion_services_available, prenatal_healthcare_available: prenatal_healthcare_available, mental_health_care_available: mental_health_care_available, prescribe_psychiatric_medication_available: prescribe_psychiatric_medication_available, preventitive_care_available:  preventitive_care_available, preventitive_care: preventitive_care, pharmacy:pharmacy)
end



