class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string     :title,    null: false
      t.string     :image,    null: false
      t.text       :content  
      t.integer    :url,      null: false
      t.integer    :category, null: false
      t.references :user,     null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
