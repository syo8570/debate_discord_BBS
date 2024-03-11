class Board < ApplicationRecord
  paginates_per 6
  belongs_to :user
  belongs_to :subject

  has_many :liking_users, through: :likes, source: :user

  validates :conclusion, presence: true, length: { maximum: 255 }
  validates :runner_up, presence: true, length: { maximum: 255 }

end