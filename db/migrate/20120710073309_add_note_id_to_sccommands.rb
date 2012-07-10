class AddNoteIdToSccommands < ActiveRecord::Migration
  def change
    add_column :sccommands, :note_id, :integer

  end
end
