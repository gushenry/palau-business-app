class DropUsersTable < ActiveRecord::Migration[5.1]
  def change
  	remove_foreign_key :applicants, :users

  	drop_table :users
  end
end
