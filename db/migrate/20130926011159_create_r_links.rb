class CreateRLinks < ActiveRecord::Migration
  def change
    create_table :r_links do |t|
      t.string :link
      t.string :properties

      t.timestamps
    end
  end
end
