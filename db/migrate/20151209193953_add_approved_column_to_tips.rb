class AddApprovedColumnToTips < ActiveRecord::Migration
  def change
    add_column :tips, :approved, :boolean
  end
end
