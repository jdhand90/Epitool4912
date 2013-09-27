class CreateRPropertyDefinitions < ActiveRecord::Migration
  def change
    create_table :r_property_definitions do |t|
      t.string :property
      t.string :symbol
      t.string :table
      t.string :definition
      t.string :properties

      t.timestamps
    end
  end
end
