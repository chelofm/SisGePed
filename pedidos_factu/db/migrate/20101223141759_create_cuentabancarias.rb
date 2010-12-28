class CreateCuentabancarias < ActiveRecord::Migration
  def self.up
    create_table :cuentabancarias do |t|
      t.integer :numeroCuenta,:null=>false
      t.integer :proveedor_id,:null=>false
      t.integer :tipocuenta_id,:null=>false
      t.integer :entidadfinanciera_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :cuentabancarias
  end
end
