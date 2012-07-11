class AddFrameworkIdToScerrors < ActiveRecord::Migration
  def change
    add_column :scerrors, :framework_id, :integer

  end
end
