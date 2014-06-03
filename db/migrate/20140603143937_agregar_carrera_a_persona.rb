class AgregarCarreraAPersona < ActiveRecord::Migration
   def up
    add_column :personas, :carrera, :string
  end

  def down
    remove_column :personas, :carrera
  end
end
