class CreateEntidadfinancieras < ActiveRecord::Migration
  def self.up
    create_table :entidadfinancieras do |t|
      t.string :nombreEntidad,:limit=>80,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :entidadfinancieras
  end
end
