class AddUserIdToPost < ActiveRecord::Migration[6.0]
  def change
    # add_column :posts, :user_id, :integer
    add_reference :posts, :user, foreign_key: true
  end
end
