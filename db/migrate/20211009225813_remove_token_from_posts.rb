class RemoveTokenFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :user_token
  end
end
