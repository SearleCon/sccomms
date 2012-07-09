class CreateScerrors < ActiveRecord::Migration
  def change
    create_table :scerrors do |t|
      t.text :actualerror
      t.text :fixnote

      t.timestamps
    end
  end
end
