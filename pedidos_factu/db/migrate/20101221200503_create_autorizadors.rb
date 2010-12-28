class CreateAutorizadors < ActiveRecord::Migration
  def self.up
    create_table :autorizadores do |t|
      t.integer :usuario_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :autorizadores
  end
end
