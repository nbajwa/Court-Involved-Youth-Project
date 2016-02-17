class FacilityBranchesController < ApplicationController


  def index
    @facility_branches = FacilityBranch.all
    render :json => @facility_branches
  end 







end
