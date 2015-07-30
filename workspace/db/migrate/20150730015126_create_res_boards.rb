class CreateResBoards < ActiveRecord::Migration
  def change
    create_table :res_boards do |t|
      t.string :title
      t.text :address
      t.integer :phoneNumber

      t.timestamps null: false
    end
  end
end
