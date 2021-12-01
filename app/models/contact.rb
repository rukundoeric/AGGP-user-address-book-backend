class Contact < ApplicationRecord
  has_many :phones, dependent: :destroy 
  has_many :emails, dependent: :destroy 

  validates :first_name, :last_name, presence: { message: 'Firstname and Lastname must not be empty!' }

  default_scope { order('first_name ASC') }
  default_scope { includes(:phones, :emails) }

  scope :group_by_first_char, -> { group_by { |u| u.first_name[0] } }

  def self.search(search)
    wildcard_search = "%#{search}%"
    where('first_name LIKE ? OR last_name LIKE ?', wildcard_search, wildcard_search)
  end
end
