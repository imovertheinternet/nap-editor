class AddEmailIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :email_id, :string
  end
end
