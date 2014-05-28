class AgregarInstitucionOferenteIdACurso < ActiveRecord::Migration
  def up
  	add_column :cursos, :institucion_oferente_id, :integer
  end

  def down
  	remove_column :cursos, :institucion_oferente_id
  end
end
