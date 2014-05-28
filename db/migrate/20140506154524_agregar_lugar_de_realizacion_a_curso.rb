class AgregarLugarDeRealizacionACurso < ActiveRecord::Migration
  def up
  	add_column :cursos, :lugar_de_realizacion, :string
  end

  def down
  	remove_column :cursos, :lugar_de_realizacion
  end
end
