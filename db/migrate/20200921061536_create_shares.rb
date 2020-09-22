class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string :date
      t.string :name
      t.text :explanation
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
