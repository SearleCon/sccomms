class CreateSccommands < ActiveRecord::Migration
  def change
    create_table :sccommands do |t|
      t.string :commandstr
      t.string :description

      t.timestamps
    end
  end
end
