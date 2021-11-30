class User < ApplicationRecord
  has_many :contacts
  validates :fullname, presence: { message: 'Name must not be empty!' }
  validates :username, presence: { message: 'Username must not be empty!' },
                       uniqueness: { message: 'Username has been alread taken, Kindly use a different username!' }
end
