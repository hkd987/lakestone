class Contact < ActiveRecord::Base
validates :name, :email, :phone, :notes, presence: true
end
