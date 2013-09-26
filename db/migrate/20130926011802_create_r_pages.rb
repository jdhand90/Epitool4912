class CreateRPages < ActiveRecord::Migration
  def change
    create_table :r_pages do |t|
      t.integer :r_language_id
      t.string :name
      t.string :template
      t.string :properties

      t.timestamps
    end
  end
end
