class AddContentsToResBoard < ActiveRecord::Migration
  def change
    add_column :res_boards, :contents, :text
  end
end
