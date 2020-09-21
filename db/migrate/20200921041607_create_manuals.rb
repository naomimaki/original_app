class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.string :title
      t.text :explanation
      t.timestamps
    end
  end
end