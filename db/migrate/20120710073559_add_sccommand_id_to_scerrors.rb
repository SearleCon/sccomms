class AddSccommandIdToScerrors < ActiveRecord::Migration
  def change
    add_column :scerrors, :sccommand_id, :integer

  end
end
