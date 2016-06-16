class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nameOrganization
      t.integer :telNumber
      t.string :address
      t.string :city

      t.timestamps null: false
    end
  end
end
