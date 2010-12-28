class CreateCiudads < ActiveRecord::Migration
  def self.up
    create_table :ciudades do |t|
      t.string :nombre,:limit=>20,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :ciudades
  end
end
