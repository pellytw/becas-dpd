class AgregarCupoInscripcionCupoRealYDisponibleACurso < ActiveRecord::Migration
  def up
  	add_column :cursos, :disponible, :boolean
  	add_column :cursos, :cupo_real, :integer
  	add_column :cursos, :cupo_inscripcion, :integer
  end

  def down
  	remove_column :cursos, :disponible
  	remove_column :cursos, :cupo_real  	
  	remove_column :cursos, :cupo_inscripcion
  end
end
