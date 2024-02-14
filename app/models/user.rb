class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :boards
  has_many :likes, dependent: :destroy
  has_many :likes_boards, through: :likes, source: :board

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, uniqueness: true
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  def own?(object)
    id == object&.user_id
  end

  def likes(board)
    likes_boards << board
  end

  def unlike(board)
    likes_boards.destroy(board)
  end

  def like?(board)
    likes_boards.include?(board)
  end
end
