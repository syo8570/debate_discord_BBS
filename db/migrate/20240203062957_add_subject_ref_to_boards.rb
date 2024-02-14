class AddSubjectRefToBoards < ActiveRecord::Migration[7.0]
  def change
    add_reference :boards, :subject, foreign_key: true
  end
end
