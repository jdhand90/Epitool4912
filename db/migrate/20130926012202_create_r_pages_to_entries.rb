class CreateRPagesToEntries < ActiveRecord::Migration
  def change
    create_table :r_pages_to_entries do |t|
      t.integer :r_page_id
      t.integer :r_entry_id
      t.string :properties

      t.timestamps
    end
  end
end
