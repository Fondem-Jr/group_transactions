class Group < ApplicationRecord
  belongs_to :user
  has_many :transfers

  validates :name, presence: true, uniqueness: true
end
