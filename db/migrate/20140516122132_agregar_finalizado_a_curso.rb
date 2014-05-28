class AgregarFinalizadoACurso < ActiveRecord::Migration
  def up
  	add_column :cursos, :finalizado, :boolean
  end

  def down
  	remove_column :cursos, :finalizado
  end
end
