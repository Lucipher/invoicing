# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090924214749) do

  create_table "client_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "abbreveated"
    t.string   "billing_person"
    t.string   "phone_number"
    t.text     "address"
    t.string   "country"
    t.string   "vat_number"
    t.string   "email_addres"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "url"
    t.text     "address"
    t.string   "vat_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.string   "ident"
    t.datetime "date"
    t.datetime "date_sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vat_rates", :force => true do |t|
    t.string   "name"
    t.integer  "vat_rate"
    t.datetime "effective_from"
    t.datetime "effective_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
