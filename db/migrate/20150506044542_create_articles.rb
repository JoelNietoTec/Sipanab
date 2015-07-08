class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.string :tags
      t.references :user, index: true, foreign_key: true
      t.boolean :important

      t.timestamps null: false
    end
    add_index :articles, :slug, unique: true
  end
end
