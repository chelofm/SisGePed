class CreateEstadoPedidos < ActiveRecord::Migration
  def self.up
    create_table :estado_pedidos do |t|
      t.string :descripcionEstado,:limit=>50,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :estado_pedidos
  end
end
