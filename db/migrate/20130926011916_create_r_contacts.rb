class CreateRContacts < ActiveRecord::Migration
  def change
    create_table :r_contacts do |t|
      t.string :name
      t.string :profession
      t.string :email
      t.string :properties

      t.timestamps
    end
  end
end
