class PostsUsers < ActiveRecord::Migration
  def up

 create_table 'posts_users', :id => false do |t|
    t.column :posts_id, :integer
    t.column :users_id, :integer
  end

  end

  def down
  end
end
