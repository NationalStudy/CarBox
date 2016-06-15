class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :nameDetail
      t.belongs_to :order, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
