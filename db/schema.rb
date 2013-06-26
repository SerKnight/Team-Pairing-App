ActiveRecord::Schema.define(version: 20130621231239) do

  enable_extension "plpgsql"

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members_teams", id: false, force: true do |t|
    t.integer "team_id"
    t.integer "member_id"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

end
