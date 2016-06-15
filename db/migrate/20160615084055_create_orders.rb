class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fullName
      t.string :numTel
      t.string :address
      t.string :license
      t.string :carBrand
      t.string :numAuto
      t.integer :year
      t.float :scope
      t.date :dateOrder

      t.timestamps null: false
    end
  end
end
