class AgregarEstadoCarreraPorcentajeCarreraInstitucionAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :institucion, :string
  	add_column :personas, :estado, :string
  	add_column :personas, :porcentaje_carrera, :integer
  end

  def down
  	remove_column :personas, :institucion
  	remove_column :personas, :estado
  	remove_column :personas, :porcentaje_carrera
  end
end