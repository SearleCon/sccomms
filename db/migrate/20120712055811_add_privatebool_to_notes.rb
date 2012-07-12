class AddPrivateboolToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :privatebool, :boolean

  end
end
