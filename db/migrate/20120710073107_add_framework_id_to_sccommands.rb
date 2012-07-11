class AddFrameworkIdToSccommands < ActiveRecord::Migration
  def change
    add_column :sccommands, :framework_id, :integer

  end
end
