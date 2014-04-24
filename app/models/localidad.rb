class Localidad < ActiveRecord::Base
  attr_accessible :nombre, :region_id

  has_many :institucion_oferente
  belongs_to :region
  has_many :persona
  has_many :escuela

  def to_s
  	"#{ self.nombre }"
  end
  
end
