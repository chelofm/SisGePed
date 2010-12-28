class CreateVigencias < ActiveRecord::Migration
  def self.up
    create_table :vigencias do |t|
      t.boolean :vigente,:null=>false,:default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :vigencias
  end
end
