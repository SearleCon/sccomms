class CreateFrameworks < ActiveRecord::Migration
  def change
    create_table :frameworks do |t|
      t.string :name
      t.text :description
      t.string :version

      t.timestamps
    end
  end
end
