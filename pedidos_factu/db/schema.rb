# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101227054606) do

  create_table "autorizaciones", :force => true do |t|
    t.date     "fecha",                          :null => false
    t.text     "obs"
    t.integer  "estado_pedido_id", :limit => 10, :null => false
    t.integer  "pedido_id",        :limit => 10, :null => false
    t.integer  "usuario_id",       :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "estadoaut"
  end

  create_table "ciudades", :force => true do |t|
    t.string   "nombre",     :limit => 20, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuentabancarias", :force => true do |t|
    t.integer  "numeroCuenta",         :limit => 10, :null => false
    t.integer  "proveedor_id",         :limit => 10, :null => false
    t.integer  "tipocuenta_id",        :limit => 10, :null => false
    t.integer  "entidadfinanciera_id", :limit => 10, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direcciones", :force => true do |t|
    t.string   "calle",      :limit => 100
    t.string   "numero",     :limit => 10
    t.integer  "ciudad_id",  :limit => 10,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emisiones", :force => true do |t|
    t.string   "tipoEmision", :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entidadfinancieras", :force => true do |t|
    t.string   "nombreEntidad", :limit => 80, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_pedidos", :force => true do |t|
    t.string   "descripcionEstado", :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados_usuarios", :force => true do |t|
    t.string   "descripcionEstado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gestiones", :force => true do |t|
    t.integer  "anio",       :limit => 10,                    :null => false
    t.boolean  "vigencia",                 :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itempedidos", :force => true do |t|
    t.float    "cantidad",     :limit => 17, :null => false
    t.float    "precioUnidad", :limit => 17, :null => false
    t.string   "unidad",       :limit => 40, :null => false
    t.text     "descripcion",                :null => false
    t.float    "importeTotal", :limit => 17, :null => false
    t.integer  "pedido_id",    :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", :force => true do |t|
    t.datetime "fecha",                       :null => false
    t.string   "obs",          :limit => 200
    t.integer  "emision_id",   :limit => 10,  :null => false
    t.integer  "gestion_id",   :limit => 10,  :null => false
    t.integer  "usuario_id",   :limit => 10,  :null => false
    t.integer  "proveedor_id", :limit => 10,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedores", :force => true do |t|
    t.integer  "nit",             :limit => 10, :null => false
    t.string   "nombreProveedor", :limit => 60, :null => false
    t.integer  "telefono_id",     :limit => 10, :null => false
    t.integer  "direccion_id",    :limit => 10, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "descripcionRol", :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_usuarios", :id => false, :force => true do |t|
    t.integer "role_id",    :limit => 10
    t.integer "usuario_id", :limit => 10
  end

  create_table "telefonos", :force => true do |t|
    t.integer  "domicilio",  :limit => 10
    t.integer  "trabajo",    :limit => 10
    t.integer  "movil1",     :limit => 10
    t.integer  "movil2",     :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipocuentas", :force => true do |t|
    t.string   "descripcionTipo", :limit => 80, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre",             :limit => 40,  :null => false
    t.string   "correoe",            :limit => 100, :null => false
    t.string   "nombreUsuario",      :limit => 40
    t.string   "password",           :limit => 50
    t.integer  "proveedor_id",       :limit => 10
    t.integer  "estados_usuario_id", :limit => 10,  :null => false
    t.integer  "role_id",            :limit => 10,  :null => false
    t.integer  "telefono_id",        :limit => 10,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
