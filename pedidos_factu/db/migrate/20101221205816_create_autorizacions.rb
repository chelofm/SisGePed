class CreateAutorizacions < ActiveRecord::Migration
  def self.up
    create_table :autorizaciones do |t|
      t.date :fecha, :null=>false
      t.text :obs

      t.integer :estado_pedido_id, :null => false
      t.integer :pedido_id,:null=> false
      t.integer :usuario_id, :null => true
      t.timestamps
    end
  end

  def self.down
    drop_table :autorizaciones
  end
end
