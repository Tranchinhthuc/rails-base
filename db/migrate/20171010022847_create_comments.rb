class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string "target_type", null: false
      t.integer "target_id", null: false
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
