class AddPictureToResBoard < ActiveRecord::Migration
  def change
    add_column :res_boards, :picture, :string
  end
end
