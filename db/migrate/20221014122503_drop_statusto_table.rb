class DropStatustoTable < ActiveRecord::Migration[6.0]
  def change
    def up
      drop_table :statusto
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  
  end
end
