class CreatePedidoestados < ActiveRecord::Migration
  def self.up
    create_table :pedidoestados do |t|
      t.integer :estado_pedido_id,:null=>false
      t.integer :pedido_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :pedidoestados
  end
end
