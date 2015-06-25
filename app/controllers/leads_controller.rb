class LeadsController < ApplicationController
  def create
    @lead = Lead.new lead_params
    if @lead.save
      cookies[:saved_lead] = true
      redirect_to root_path
    else
      redirect_to root_path, alert: "Failed to submit :-("
    end
  end




  private

  def lead_params
    params.require(:lead).permit(:name, :email)
  end
end
