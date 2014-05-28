class CreateInstitucionOferentes < ActiveRecord::Migration
  def change
    create_table :institucion_oferentes do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.integer :lugar_geografico_id
      t.string :calle
      t.integer :nro_calle
      t.string :piso
      t.string :depto

      t.timestamps
    end
  end
end
