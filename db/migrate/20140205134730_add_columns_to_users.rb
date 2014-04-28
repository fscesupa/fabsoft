class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :knwoledge_area, :text
  end
end
