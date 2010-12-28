class CreateEstadosUsuarios < ActiveRecord::Migration
  def self.up
    create_table :estados_usuarios do |t|
      t.string :descripcionEstado

      t.timestamps
    end
  end

  def self.down
    drop_table :estados_usuarios
  end
end
