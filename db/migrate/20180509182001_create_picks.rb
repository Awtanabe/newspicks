class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.text       :comment
      t.references :user,    null: false, foreign_key: true
      t.references :article, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
