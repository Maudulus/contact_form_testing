class Contact < ActiveRecord::Base
validates :last_name, presence: true
validates :first_name, presence: true
validates :subject, presence: true
validates :description, presence: true
validates :email, presence: true
end

