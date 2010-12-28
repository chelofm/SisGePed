class CreateEmisions < ActiveRecord::Migration
  def self.up
    create_table :emisiones do |t|
      t.string :tipoEmision,:limit=>50,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :emisiones
  end
end
