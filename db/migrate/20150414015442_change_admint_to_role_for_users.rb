class ChangeAdmintToRoleForUsers < ActiveRecord::Migration
  def change
    remove_column :users, :admin # Remove the admin column from users
    add_column :users, :role, :integer, default: 0 # Add roles as an integer column
  end
end
