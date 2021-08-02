class Transfer < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :amount, presence: true
  validates :currency, presence: true
  validates :group_id, presence: true
end
