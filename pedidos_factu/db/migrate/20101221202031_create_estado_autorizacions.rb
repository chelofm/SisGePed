class CreateEstadoAutorizacions < ActiveRecord::Migration
  def self.up
    create_table :estado_autorizaciones do |t|
      t.string :estado,:limit=>50,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :estado_autorizaciones
  end
end
