class CreateTipocuentas < ActiveRecord::Migration
  def self.up
    create_table :tipocuentas do |t|
      t.string :descripcionTipo,:limit=>80,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :tipocuentas
  end
end
