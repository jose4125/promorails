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

ActiveRecord::Schema.define(:version => 20130503030304) do

  create_table "frases", :force => true do |t|
    t.integer  "user_id"
    t.string   "frase"
    t.boolean  "valida"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "frases", ["user_id"], :name => "index_frases_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cedula"
    t.string   "ciudad"
    t.string   "fan"
    t.boolean  "acepta_t",   :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "users", ["cedula"], :name => "index_users_on_cedula", :unique => true

end
