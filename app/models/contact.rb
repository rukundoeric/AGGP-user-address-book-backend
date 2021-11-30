class Contact < ApplicationRecord
  has_many :phonenumbers
  has_many :emails

  validates :first_name, :last_name, presence: { message: 'Firstname and Lastname must not be empty!' }

  default_scope { order('first_name ASC') }
  default_scope { includes(:phonenumbers) }

  scope :group_by_first_char, -> { group_by{|u| u.first_name[0] } }
end
