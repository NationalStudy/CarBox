class AddFieldsToMasters < ActiveRecord::Migration
  def change
    add_column :masters, :nameMaster, :string
    add_column :masters, :telNum, :integer
    add_column :masters, :addressMaster, :string
  end
end
