class Board < ApplicationRecord
  paginates_per 20
  belongs_to :user
  belongs_to :subject
  has_many :bookmarks, dependent: :destroy

  validates :conclusion, presence: true, length: { maximum: 255 }
  validates :runner_up, presence: true, length: { maximum: 255 }

  def own?(object)
    id == object&.user_id
  end
end