class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :product
      t.text :description
      t.string :price
      t.string :imageurl
      t.string :producturl
      t.string :sku

      t.timestamps
    end
  end
end
