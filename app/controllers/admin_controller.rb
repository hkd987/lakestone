class AdminController < ApplicationController
  def index
      @contacts = Contact.all
      @leads = Lead.all
    end

end
