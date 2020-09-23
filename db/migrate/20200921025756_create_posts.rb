class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :greeting, null: false
      t.integer :user_id, null: false, foreign_key: true ,default: ""
      t.timestamps
    end
  end
end
