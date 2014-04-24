class PersonaCurso < ActiveRecord::Base
  attr_accessible :curso_id, :fecha, :persona_id

  belongs_to :curso
  belongs_to :persona

end
