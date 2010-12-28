class CreateGestions < ActiveRecord::Migration
  def self.up
    create_table :gestiones do |t|
      t.integer :anio,:null=>false
      t.boolean :vigencia,:null=>false,:default=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :gestiones
  end
end
