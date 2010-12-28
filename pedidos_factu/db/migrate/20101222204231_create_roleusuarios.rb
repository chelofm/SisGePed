class CreateRoleusuarios < ActiveRecord::Migration
  def self.up
    create_table :roleusuarios do |t|
      t.integer :rol_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :roleusuarios
  end
end
