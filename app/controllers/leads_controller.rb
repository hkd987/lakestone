class LeadsController < ApplicationController
  def index
    @lead = Lead.all
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new lead_params
    if @lead.save
      cookies[:saved_lead] = true
      redirect_to root_path
    else
      redirect_to new_lead_path, alert: "Failed to submit :-("
    end
  end

  def edit
    @lead = Lead.find(params[:id])
  end


  private

  def lead_params
    params.require(:lead).permit(:name, :email)
  end
end
