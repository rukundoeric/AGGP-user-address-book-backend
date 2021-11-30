class Contact < ApplicationRecord
  has_many :phonenumbers
  has_many :emails
  validates :first_namem, :last_name, presence: true
end
