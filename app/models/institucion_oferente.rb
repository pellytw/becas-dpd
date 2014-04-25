class InstitucionOferente < ActiveRecord::Base
  attr_accessible :calle, :depto, :email, :lugar_geografico_id, :nombre, :nro_calle, :piso, :telefono

  has_many :curso
  belongs_to :localidad

  def to_s
  	"#{ self.nombre }"
  end

end
