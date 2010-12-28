class CreatePedidos < ActiveRecord::Migration
  def self.up
    create_table :pedidos do |t|
      t.datetime :fecha,:null=>false
      t.string :obs,:limit=>200
      t.integer :emision_id,:null=>false
      t.integer :gestion_id,:null=>false
      t.integer :usuario_id,:null=>false
      t.integer :proveedor_id,:null=>false
      t.integer :unidad_beneficiaria_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :pedidos
  end
end
