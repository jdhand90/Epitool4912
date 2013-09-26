class CreateREntries < ActiveRecord::Migration
  def change
    create_table :r_entries do |t|
      t.integer :r_language_id
      t.string :title
      t.text :entry
      t.integer :order
      t.string :properties

      t.timestamps
    end
  end
end
