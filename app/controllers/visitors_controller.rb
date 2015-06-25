class VisitorsController < ApplicationController
  def index
    @lead = Lead.new
    @contact = Contact.new
  end




end
