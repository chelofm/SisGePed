class CreateTelefonos < ActiveRecord::Migration
  def self.up
    create_table :telefonos do |t|
      t.integer :domicilio
      t.integer :trabajo
      t.integer :movil1
      t.integer :movil2

      t.timestamps
    end
  end

  def self.down
    drop_table :telefonos
  end
end
