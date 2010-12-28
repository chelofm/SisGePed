class CreateItempedidos < ActiveRecord::Migration
  def self.up
    create_table :itempedidos do |t|
      t.float :cantidad, :null=>false
      t.float :precioUnidad, :null=>false
      t.string :unidad, :limit => 40, :null=>false
      t.text :descripcion, :null=>false
      t.float :importeTotal, :null=>false
      t.integer :pedido_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itempedidos
  end
end
