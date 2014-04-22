class Persona < ActiveRecord::Base
  attr_accessible :apellidos_y_nombres, :email, :escuela_id, :espacio_curricular, :fecha_alta_espacio_curr, :fecha_nacimiento, :localidad_id, :nombre_titulo, :situacion_revista_id, :tel_laboral, :tel_particular, :tipo_documento_id, :titulo_id
end
