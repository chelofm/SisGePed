class CreateProveedors < ActiveRecord::Migration
  def self.up
    create_table :proveedores do |t|
      t.integer :nit,:null=>false
      t.string :nombreProveedor, :limit => 60, :null => false
      t.integer :telefono_id, :null => false
      t.integer :direccion_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :proveedores
  end
end
