class CreateRoleUsuarios < ActiveRecord::Migration
  def self.up
    create_table :roles_usuarios, :id => false do |t|
      t.integer :role_id
      t.integer :usuario_id
    end
  end

  def self.down
    drop_table :roles_usuarios
  end
end
