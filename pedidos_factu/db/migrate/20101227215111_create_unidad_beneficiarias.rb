class CreateUnidadBeneficiarias < ActiveRecord::Migration
  def self.up
    create_table :unidad_beneficiarias do |t|
      t.string :nombre
      t.integer :direccion_id
      t.integer :telefono_id

      t.timestamps
    end
  end

  def self.down
    drop_table :unidad_beneficiarias
  end
end
