class Escuela < ActiveRecord::Base
  attr_accessible :localidad, :nombre, :nro, :region

  has_many :persona
  belongs_to :localidad
  
end
