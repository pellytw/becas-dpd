class AgregarNumeroDocumentoAPersona < ActiveRecord::Migration
   def up
  	add_column :personas, :nro_documento, :integer
  end

  def down
  	remove_column :personas, :nro_documento
  end
end
