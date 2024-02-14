class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :conclusion
      t.string :runner_up
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
