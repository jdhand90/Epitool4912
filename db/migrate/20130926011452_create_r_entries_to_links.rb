class CreateREntriesToLinks < ActiveRecord::Migration
  def change
    create_table :r_entries_to_links do |t|
      t.integer :r_entry_id
      t.integer :r_link_id
      t.string :properties

      t.timestamps
    end
  end
end
