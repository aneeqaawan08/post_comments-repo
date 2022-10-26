class DropStatusFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Status, :integer
  end
end
