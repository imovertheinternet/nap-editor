class AddPostreviewToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :postreview, :string
  end
end
