class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :shop_name
      t.string :name
      t.text :greeting
      t.timestamps
    end
  end
end
