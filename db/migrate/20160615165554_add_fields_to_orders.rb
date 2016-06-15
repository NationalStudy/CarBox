class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :dateStart, :date
    add_column :orders, :dateEnd, :date
    add_column :orders, :box, :integer
  end
end
