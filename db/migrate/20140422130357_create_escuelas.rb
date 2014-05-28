class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.string :nombre
      t.integer :nro
      t.string :localidad
      t.string :region

      t.timestamps
    end
  end
end
