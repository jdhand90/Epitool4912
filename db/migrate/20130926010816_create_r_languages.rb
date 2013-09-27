class CreateRLanguages < ActiveRecord::Migration
  def change
    create_table :r_languages do |t|
      t.string :language
      t.string :properties

      t.timestamps
    end
  end
end
