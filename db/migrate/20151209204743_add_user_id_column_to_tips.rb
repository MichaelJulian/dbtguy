class AddUserIdColumnToTips < ActiveRecord::Migration
  def change
    add_column :tips, :user_id, :integer
  end
end
