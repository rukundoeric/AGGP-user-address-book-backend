class Phonenumber < ApplicationRecord
  belongs_to :contact

  validates :phone, presence: { message: 'Invalid phone number!' },
                    numericality: true,
                    length: { minimum: 10, maximum: 15 }
end
