class Contact < ApplicationRecord
  has_many :phonenumbers
  has_many :emails
  validates :first_name, :last_name, presence: { message: 'Firstname and Lastname must not be empty!' }
end
