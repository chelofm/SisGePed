class CreateSolicitantes < ActiveRecord::Migration
  def self.up
    create_table :solicitantes do |t|
      t.integer :usuario_id,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :solicitantes
  end
end
