class Persona < ActiveRecord::Base
  attr_accessible :apellidos_y_nombres, :email, :escuela_id, :espacio_curricular, :fecha_alta_espacio_curr, :fecha_nacimiento, :localidad_id, :nombre_titulo, :situacion_revista_id, :tel_laboral, :tel_particular, :tipo_documento_id, :titulo_id, :nro_documento
  attr_accessible :becado
  attr_accessible :porcentaje_carrera, :institucion, :estado, :carrera

  has_many :persona_curso
  has_many :curso, :through => :persona_curso

  belongs_to :titulo
  belongs_to :situacion_revistum
  belongs_to :tipo_documento
  belongs_to :escuela
  belongs_to :localidad

  validates :apellidos_y_nombres, :presence => true
  validates :nro_documento, :presence => true, uniqueness: true

  validates :email, :estado, :titulo_id, :nombre_titulo, :escuela_id, :espacio_curricular, :fecha_alta_espacio_curr, :presence => true

  def to_s
    "#{ self.apellidos_y_nombres }"
  end

end
