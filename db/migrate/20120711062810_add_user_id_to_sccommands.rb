class AddUserIdToSccommands < ActiveRecord::Migration
  def change
    add_column :sccommands, :user_id, :integer

  end
end
