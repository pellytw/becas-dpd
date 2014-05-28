class PersonaCurso < ActiveRecord::Base
  attr_accessible :curso_id, :fecha, :persona_id
  attr_accessible :becado

  belongs_to :curso
  belongs_to :persona

end
