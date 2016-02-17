class FacilityTypesController < ApplicationController

  def index
    @facility_types = FacilityType.all
    render :json => @facility_types
  end 




end
