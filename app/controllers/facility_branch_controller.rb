class FacilityBranchController < ApplicationController


  def index
    @facility_branches = FacilityBranches.all
    render :json => @facility_branches
  end 







end
