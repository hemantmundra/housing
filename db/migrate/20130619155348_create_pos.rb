class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
