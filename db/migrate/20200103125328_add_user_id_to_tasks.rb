class AddUserIdToTasks < ActiveRecord::Migration[5.2]
  def up
  	execute 'DELETE FROM tasks;'
  	add_column :tasks, :user, :reference, index: true
  	change_column :tasks, :user, :reference, :null => false
  end

  def down
  	remove_column :tasks, :user, index: true
  end
end
