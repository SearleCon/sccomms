class AddImageToScerrors < ActiveRecord::Migration
  def change
    add_column :scerrors, :image, :string

  end
end
