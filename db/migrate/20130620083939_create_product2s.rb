class CreateProduct2s < ActiveRecord::Migration
  def change
    create_table :product2s do |t|
      t.string :name
      t.string :categoryies
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
