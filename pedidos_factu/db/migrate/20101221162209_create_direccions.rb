class CreateDireccions < ActiveRecord::Migration
  def self.up
    create_table :direcciones do |t|
      t.string :calle,:limit=>100
      t.string :numero,:limit=>10
      t.integer :ciudad_id,:null=>false

      t.timestamps
    end
  end
  def self.down
    drop_table :direcciones
  end
end
