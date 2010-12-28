class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :descripcionRol, :limit => 40

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
