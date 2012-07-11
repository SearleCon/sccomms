class AddNoteIdToFrameworks < ActiveRecord::Migration
  def change
    add_column :frameworks, :note_id, :integer

  end
end
