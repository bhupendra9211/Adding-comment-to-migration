# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_30_081835) do
  create_table "posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "Holds all the blog posts for the site", force: :cascade do |t|
    t.string "title", null: false, comment: "The title of the blog post"
    t.text "body", null: false, comment: "The main content of the blog post, will be paragraphs of text"
    t.index ["title"], name: "index_posts_on_title", unique: true, comment: "Title should be unique, or else it might confuse readers if two blog posts had the same name"
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", comment: "Products table", force: :cascade do |t|
    t.string "name", comment: "Name of the product to create"
    t.string "barcode", comment: "Barcode of the product"
    t.string "description", comment: "Product details"
    t.string "msrp", comment: "Maximum Retail Price"
    t.string "our_price", comment: "Selling price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_tables", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username", comment: "Name of the User"
    t.string "email", comment: "Email of the User"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
