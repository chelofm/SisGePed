class AddEstadoGestion < ActiveRecord::Migration
  def self.up
    add_column :autorizaciones, :estadoaut, :boolean
  end

  def self.down
    remove_column :autorizaciones, :estadoaut
  end
end
