class AddOrderToPages < ActiveRecord::Migration
  def change
    add_column :r_pages, :order, :int
  end
end
