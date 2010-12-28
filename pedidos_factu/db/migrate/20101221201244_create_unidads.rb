class CreateUnidads < ActiveRecord::Migration
  def self.up
    create_table :unidades do |t|
      t.string :tipoUnidad,:limit=>50,:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :unidades
  end
end
