class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :master

      t.timestamps null: false
    end
  end
end
