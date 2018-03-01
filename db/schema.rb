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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180301181559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enfermedades", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "gato_id"
    t.bigint "perro_id"
    t.index ["gato_id"], name: "index_enfermedades_on_gato_id"
    t.index ["perro_id"], name: "index_enfermedades_on_perro_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.string "nombre"
    t.string "sexo"
    t.string "telefono"
    t.string "direccion"
    t.string "comuna"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.string "medio_encuentro"
    t.text "medio_encuentro_text"
    t.bigint "edad"
    t.string "rut"
  end

  create_table "gatos", force: :cascade do |t|
    t.string "nombre"
    t.bigint "edad"
    t.string "sexo"
    t.string "raza"
    t.decimal "peso"
    t.string "porte"
    t.string "chip"
    t.bigint "numero_chip"
    t.string "agresividad"
    t.string "color"
    t.text "senas"
    t.text "comentario"
    t.bigint "ficha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.string "apto_cirugia"
    t.string "medico_tratante"
    t.string "Hora_ingreso"
    t.string "tipo_cirujia"
    t.text "hallazgos"
    t.string "hora_alta"
    t.text "complicaciones"
    t.index ["ficha_id"], name: "index_gatos_on_ficha_id"
  end

  create_table "perros", force: :cascade do |t|
    t.string "nombre"
    t.bigint "edad"
    t.string "sexo"
    t.string "raza"
    t.decimal "peso"
    t.string "porte"
    t.string "chip"
    t.bigint "numero_chip"
    t.string "agresividad"
    t.string "color"
    t.text "senas"
    t.text "comentario"
    t.bigint "ficha_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tipo"
    t.string "apto_cirugia"
    t.string "medico_tratante"
    t.string "Hora_ingreso"
    t.string "tipo_cirujia"
    t.text "hallazgos"
    t.string "hora_alta"
    t.text "complicaciones"
    t.index ["ficha_id"], name: "index_perros_on_ficha_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "gato_id"
    t.bigint "perro_id"
    t.index ["gato_id"], name: "index_vacunas_on_gato_id"
    t.index ["perro_id"], name: "index_vacunas_on_perro_id"
  end

  add_foreign_key "enfermedades", "gatos"
  add_foreign_key "enfermedades", "perros"
  add_foreign_key "gatos", "fichas"
  add_foreign_key "perros", "fichas"
  add_foreign_key "vacunas", "gatos"
  add_foreign_key "vacunas", "perros"
end
