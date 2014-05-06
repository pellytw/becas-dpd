class Curso < ActiveRecord::Base
  attr_accessible :capacitadores, :carga_horaria_no_presencial, :carga_horaria_presencial, :destinatarios, :email, :fechas_y_horarios, :institucion_oferente, :localidad_id, :nro_expediente, :resenia, :tel_contacto, :disponible, :cupo_real, :cupo_inscripcion, :nombre
  attr_accessible :institucion_oferente_id, :lugar_de_realizacion 

  belongs_to :institucion_oferente

  belongs_to :localidad

  has_many :persona_curso, :dependent => :destroy
  has_many :persona, :through => :persona_curso

  validates :cupo_inscripcion, :presence => true

end
