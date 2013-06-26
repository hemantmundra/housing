class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
