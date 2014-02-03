class AddEmailAndPasswordDigestToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role, :string
    add_column :users, :password_digest, :string
  end

  def down
    remove_column :users, :role
    remove_column :users, :password_digest
  end
end
