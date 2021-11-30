class User < ApplicationRecord
  has_many :contacts
  validates :phone, presence: true
end
