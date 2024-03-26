ActiveRecord::Schema[7.1].define(version: 2024_03_25_140323) do
  create_table "animes", force: :cascade do |t|
    t.string "Title"
    t.float "Rank"
    t.string "Type"
    t.integer "Episodes"
    t.date "Aired"
    t.float "Members"
    t.string "Page_url"
    t.string "image_url"
    t.float "Score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
