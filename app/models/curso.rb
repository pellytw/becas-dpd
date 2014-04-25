class Curso < ActiveRecord::Base
  attr_accessible :capacitadores, :carga_horaria_no_presencial, :carga_horaria_presencial, :destinatarios, :email, :fechas_y_horarios, :institucion_oferente, :localidad_id, :nro_expediente, :resenia, :tel_contacto, :disponible, :cupo_real, :cupo_inscripcion, :nombre
  attr_accessible :institucion_oferente_id 

  belongs_to :institucion_oferente

  has_many :persona_curso
  has_many :persona, :through => :persona_curso

end
