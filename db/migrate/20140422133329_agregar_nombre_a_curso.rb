class AgregarNombreACurso < ActiveRecord::Migration
 def up
  	add_column :cursos, :nombre, :string
  end

  def down
  	remove_column :cursos, :nombre
  end
end
