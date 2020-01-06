class AddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :admin, :boolean, default: false
  	change_column :users, :admin, :boolean, :null => false
  end
end
