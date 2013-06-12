class AddAdminreviewToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :adminreview, :boolean
  end
end
