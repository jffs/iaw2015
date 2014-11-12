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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141112031518) do

  create_table "articles", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "duracion"
    t.boolean  "estado"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "category_id"
  end

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
  end

  create_table "coments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "article_id"
  end

  create_table "offers", force: true do |t|
    t.text     "contenido"
    t.float    "precio",     default: 0.0
    t.string   "estado",     default: "En espera"
    t.integer  "user_id"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["article_id"], name: "index_offers_on_article_id"
  add_index "offers", ["user_id"], name: "index_offers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "sexo"
    t.integer  "telefono"
    t.string   "correo"
    t.string   "nick"
    t.string   "contrasena"
    t.integer  "nivel"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
