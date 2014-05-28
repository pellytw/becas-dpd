class AgregarBecadoAPersonaCurso < ActiveRecord::Migration
  def up
  	add_column :persona_cursos, :becado, :boolean
  end

  def down
  	remove_column :persona_cursos, :becado
  end
end
