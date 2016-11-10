class CreateFaucets < ActiveRecord::Migration
  def change
    create_table :faucets do |t|
      t.string :category
      t.string :manufacturer
      t.string :model
      t.string :discription
      t.string :main_img
      t.integer :sellingprice
      t.integer :properprice
      t.integer :discountrate
      t.integer :buyingprice
      t.string :fn1_title
      t.string :fn1_img
      t.string :fn1_content
      t.string :fn1_url

      t.timestamps null: false
    end
  end
end
