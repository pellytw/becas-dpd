class Escuela < ActiveRecord::Base
  attr_accessible :localidad, :nombre, :nro, :region
end
