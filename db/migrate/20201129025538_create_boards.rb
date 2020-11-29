class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean "favorite"
      t.timestamps
    end
  end
end
