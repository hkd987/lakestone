class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end



  def create
    @contact = Contact.new contact_params
    if @contact.save
      cookies[:saved_contact] = true
      redirect_to root_path
    else
      redirect_to new_contact_path, alert: "Failed to submit :-("
    end
  end




  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :notes)
  end

end
