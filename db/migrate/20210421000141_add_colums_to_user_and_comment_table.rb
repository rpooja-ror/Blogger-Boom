class AddColumsToUserAndCommentTable < ActiveRecord::Migration[6.1]
  def change
    # add_column :users, :role_id, :integer
    # add_column :comments, :user_id, :integer
    add_column :articles, :user_id, :integer
  end
end
