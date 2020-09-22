class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.string :title
      t.text :explanation
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end