class RemovePasswordFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :role
    remove_column :users, :password_digest
  end

  def down
    add_column :users, :role
    add_column :users, :password_digest
  end
end
