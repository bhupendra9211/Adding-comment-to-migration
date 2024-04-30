class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts, comment: 'Holds all the blog posts for the site' do |t|
      t.string :title, null: false, comment: 'The title of the blog post'
      t.text :body, null: false, comment: 'The main content of the blog post, will be paragraphs of text'
    end

    add_index :posts, :title, unique: true, comment: 'Title should be unique, or else it might confuse readers if two blog posts had the same name'
  end
end
