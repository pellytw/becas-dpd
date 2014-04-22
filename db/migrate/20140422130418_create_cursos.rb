class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :institucion_oferente
      t.string :tel_contacto
      t.string :calle
      t.integer :nro
      t.string :piso
      t.string :depto
      t.string :email
      t.text :resenia
      t.text :destinatarios
      t.string :carga_horaria_presencial
      t.string :carga_horaria_no_presencial
      t.string :nro_expediente
      t.integer :localidad_id
      t.text :fechas_y_horarios
      t.text :capacitadores

      t.timestamps
    end
  end
end
