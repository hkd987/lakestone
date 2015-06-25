class AdminController < ApplicationController
  def index
      @leads = Lead.all
      @contacts = Contact.all
    end
end
