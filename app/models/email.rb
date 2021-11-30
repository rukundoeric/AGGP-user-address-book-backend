class Email < ApplicationRecord
  belongs_to :contact

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
