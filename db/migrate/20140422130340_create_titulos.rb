class CreateTitulos < ActiveRecord::Migration
  def change
    create_table :titulos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
