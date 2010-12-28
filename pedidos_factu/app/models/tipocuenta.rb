class Tipocuenta < ActiveRecord::Base
  has_many :cuentabancarias,
           :class_name => "Cuentabancaria"
end
