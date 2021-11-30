class User < ApplicationRecord
  has_many :contacts
  validates :name, presence: true
end
