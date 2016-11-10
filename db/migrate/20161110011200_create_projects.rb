class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pj_name
      t.integer :management_id
      t.integer :originalkbratio

      t.timestamps null: false
    end
  end
end
