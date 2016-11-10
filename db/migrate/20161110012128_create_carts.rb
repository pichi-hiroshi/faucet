class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :project_id
      t.integer :tap_id

      t.timestamps null: false
    end
  end
end
