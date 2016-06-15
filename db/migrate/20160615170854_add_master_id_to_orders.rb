class AddMasterIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :master_id, :integer
  end
end
