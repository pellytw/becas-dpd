# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140506154524) do

  create_table "cursos", :force => true do |t|
    t.string   "tel_contacto"
    t.string   "email"
    t.text     "resenia"
    t.text     "destinatarios"
    t.string   "carga_horaria_presencial"
    t.string   "carga_horaria_no_presencial"
    t.string   "nro_expediente"
    t.integer  "localidad_id"
    t.text     "fechas_y_horarios"
    t.text     "capacitadores"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.boolean  "disponible"
    t.integer  "cupo_real"
    t.integer  "cupo_inscripcion"
    t.string   "nombre"
    t.integer  "institucion_oferente_id"
    t.string   "lugar_de_realizacion"
  end

  create_table "escuelas", :force => true do |t|
    t.integer  "nro"
    t.string   "nivel"
    t.string   "nombre"
    t.string   "localidad"
    t.integer  "region"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "institucion_oferentes", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.integer  "lugar_geografico_id"
    t.string   "calle"
    t.integer  "nro_calle"
    t.string   "piso"
    t.string   "depto"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "localidades", :force => true do |t|
    t.integer  "region_id"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "localidads", :force => true do |t|
    t.integer  "region_id"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "persona_cursos", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "curso_id"
    t.datetime "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personas", :force => true do |t|
    t.string   "apellidos_y_nombres"
    t.integer  "tipo_documento_id"
    t.date     "fecha_nacimiento"
    t.integer  "situacion_revista_id"
    t.integer  "titulo_id"
    t.string   "nombre_titulo"
    t.integer  "escuela_id"
    t.string   "espacio_curricular"
    t.date     "fecha_alta_espacio_curr"
    t.integer  "localidad_id"
    t.string   "email"
    t.string   "tel_particular"
    t.string   "tel_laboral"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "nro_documento"
  end

  create_table "regions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.string   "regulator"
    t.string   "conduct"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "situacion_revista", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_documentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "titulos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "nombres"
    t.string   "apellidos"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
