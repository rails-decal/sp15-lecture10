class AddUserIdToQuit < ActiveRecord::Migration
  def change
    add_column :quits, :user_id, :integer
  end
end
