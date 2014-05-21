class AgregarBecadoAPersona < ActiveRecord::Migration
  def up
  	add_column :personas, :becado, :boolean
  end

  def down
  	remove_column :personas, :becado
  end
end
