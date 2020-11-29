class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.belongs_to :board, null: false, foreign_key: true
      t.boolean "favorite"
      t.timestamps
    end
  end
end
