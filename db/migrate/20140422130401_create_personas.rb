class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :apellidos_y_nombres
      t.integer :tipo_documento_id
      t.date :fecha_nacimiento
      t.integer :situacion_revista_id
      t.integer :titulo_id
      t.string :nombre_titulo
      t.integer :escuela_id
      t.string :espacio_curricular
      t.date :fecha_alta_espacio_curr
      t.integer :localidad_id
      t.string :email
      t.string :tel_particular
      t.string :tel_laboral

      t.timestamps
    end
  end
end
