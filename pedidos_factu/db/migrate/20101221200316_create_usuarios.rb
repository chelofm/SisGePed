class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombre,:limit=>40,:null=>false
      t.string :correoe,:limit=>100,:null=>false
      t.string :nombreUsuario,:limit=>40
      t.string :password,:limit=>50
      t.integer :proveedor_id, :null => true
      t.integer :estados_usuario_id, :null=>false
      t.integer :role_id,:null=>false
      t.integer :telefono_id,:null=>false
      t.integer :unidad_beneficiaria_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
