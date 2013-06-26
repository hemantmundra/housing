class CreateProduct1s < ActiveRecord::Migration
  def change
    create_table :product1s do |t|
      t.string :name
      t.string :categoryies
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
