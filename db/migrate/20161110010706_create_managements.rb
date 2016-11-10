class CreateManagements < ActiveRecord::Migration
  def change
    create_table :managements do |t|
      t.integer :kbratio
      t.string :oasyssegment
      t.string :companyname
      t.string :branch
      t.string :postalcode
      t.string :address
      t.string :tel
      t.string :oasyseigyo
      t.string :contractor

      t.timestamps null: false
    end
  end
end
