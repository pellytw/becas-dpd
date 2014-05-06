class Escuela < ActiveRecord::Base
  attr_accessible :localidad, :nombre, :nro, :region

  has_many :persona
  belongs_to :localidad

  def to_s
  	"#{ self.nombre } - #{ self.nro }"
  end
  
end
