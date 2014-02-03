class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :user_image
      t.string :banner_image
      t.string :email
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
