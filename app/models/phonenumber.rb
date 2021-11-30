class Phonenumber < ApplicationRecord
  belongs_to :contact

  validates :phonenumber, presence: true, numericality: true, length: { minimum: 10, maximum: 15 }
  validates :contact_id, presence: true
end
