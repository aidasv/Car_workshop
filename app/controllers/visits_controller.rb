class VisitsController < ApplicationController

  def show 
    @visit = Visit.find(params[:id])
    @services = @visit.services
    
  end
end
