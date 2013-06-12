class AddProductimageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :productimage, :string
  end
end
