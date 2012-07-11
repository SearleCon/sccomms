class AddUserIdToFrameworks < ActiveRecord::Migration
  def change
    add_column :frameworks, :user_id, :integer

  end
end
