class AddNoteIdToScerrors < ActiveRecord::Migration
  def change
    add_column :scerrors, :note_id, :integer

  end
end
