class CreatePersonaCursos < ActiveRecord::Migration
  def change
    create_table :persona_cursos do |t|
      t.integer :persona_id
      t.integer :curso_id
      t.datetime :fecha

      t.timestamps
    end
  end
end
