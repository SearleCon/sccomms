class AddSccommandIdToFrameworks < ActiveRecord::Migration
  def change
    add_column :frameworks, :sccommand_id, :integer

  end
end
