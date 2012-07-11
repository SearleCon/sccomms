class AddUserIdToScerrors < ActiveRecord::Migration
  def change
    add_column :scerrors, :user_id, :integer

  end
end
