class AgregarNombresYApellidosAUser < ActiveRecord::Migration
  def up
  	add_column :users, :nombres, :string
  	add_column :users, :apellidos, :string  	
  end

  def down
  	remove_column :users, :nombres
  	remove_column :users, :apellidos  	
  end
end
