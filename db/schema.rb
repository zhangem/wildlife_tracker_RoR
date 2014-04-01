ActiveRecord::Schema.define(version: 20140401164932) do

  enable_extension "plpgsql"

  create_table "species", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kind"
  end

end
