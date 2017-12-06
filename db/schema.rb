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

ActiveRecord::Schema.define(version: 20171206195934) do

  create_table "aprendizs", id: false, force: :cascade do |t|
    t.string "id_usuario_m"
    t.string "id_usuario_a"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "battle_droids", id: false, force: :cascade do |t|
    t.string "id_fabricacao"
    t.string "tipo_arma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cria", id: false, force: :cascade do |t|
    t.string "id_usuario"
    t.string "id_sabre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "droids", primary_key: "id_fabricacao", id: :string, force: :cascade do |t|
    t.string "serial_name"
    t.string "ano_fabricacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fois", id: false, force: :cascade do |t|
    t.string "id_usuario_m_sith"
    t.string "id_usuario_j"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jedis", primary_key: "id_usuario_j", id: :string, force: :cascade do |t|
    t.string "ordem"
    t.string "classe_jedi"
    t.string "idade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "num_comunicadors", primary_key: "n_comunicador", id: :string, force: :cascade do |t|
    t.string "id_usuario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "padawans", primary_key: "cod_padawan", id: :string, force: :cascade do |t|
    t.string "id_usuario_j"
    t.string "nome_pad"
    t.string "idade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responsavels", primary_key: "cod_padawan", id: :string, force: :cascade do |t|
    t.string "nome"
    t.string "planeta_origem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sabre_de_luzs", force: :cascade do |t|
    t.string "id_sabre"
    t.string "cristal"
    t.string "local_origem"
    t.string "cor"
    t.date "data_criacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siths", primary_key: "id_usuario", id: :string, force: :cascade do |t|
    t.string "funcao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "templos", primary_key: "id_templo", id: :string, force: :cascade do |t|
    t.string "nome_templo"
    t.string "planeta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "testa_e_testados", id: false, force: :cascade do |t|
    t.string "id_usuario_j"
    t.string "id_templo"
    t.string "cod_padawan"
    t.string "resultado"
    t.date "data_teste"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usas", id: false, force: :cascade do |t|
    t.string "id_usuario"
    t.string "id_fabricacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuario_da_forcas", primary_key: "id_usuario", id: :string, force: :cascade do |t|
    t.string "id_sabre"
    t.string "planeta_origem"
    t.string "nome_usuario"
    t.date "data_nas"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utility_droids", id: false, force: :cascade do |t|
    t.string "id_fabricacao"
    t.string "especialidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utilizas", id: false, force: :cascade do |t|
    t.string "id_usuario"
    t.string "id_fabricacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
