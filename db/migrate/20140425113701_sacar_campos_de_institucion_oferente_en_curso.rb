class SacarCamposDeInstitucionOferenteEnCurso < ActiveRecord::Migration
  def up
  	remove_column :cursos, :institucion_oferente
  	remove_column :cursos, :calle
  	remove_column :cursos, :nro
  	remove_column :cursos, :depto
  	remove_column :cursos, :piso
  end

  def down
  	add_column :cursos, :institucion_oferente_id, :string
  	add_column :cursos, :calle, :string
  	add_column :cursos, :nro, :integer
  	add_column :cursos, :depto, :string
  	add_column :cursos, :piso, :string
  end
end
