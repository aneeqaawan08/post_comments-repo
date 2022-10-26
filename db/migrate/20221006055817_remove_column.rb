class RemoveColumn < ActiveRecord::Migration[6.0]
 
    def up
      remove_column :comments, :name
    end
  
    def down
      add_column :comments, :name, :string
    end
  
end
