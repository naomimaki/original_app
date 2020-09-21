class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string :date
      t.string :name
      t.text :explanation
      t.timestamps
    end
  end
end
