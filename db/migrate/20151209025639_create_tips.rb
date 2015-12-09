class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.string :author
      t.string :caption
      t.string :situation
      t.string :do
      t.string :dont
      t.string :quote

      t.timestamps null: false
    end
  end
end
