class CreateTranslatedPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :translated_posts do |t|
      t.integer :translator_id
      t.integer :post_id
      t.integer :language_id
      t.string :title
      t.integer :status, default: 0, null: false
      t.text :content

      t.timestamps
    end
  end
end
