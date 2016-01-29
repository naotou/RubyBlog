class CreateProdects < ActiveRecord::Migration
  def change
    create_table :prodects do |t|
      t.string :name
      t.decimal :price
      t.text :desc

      t.timestamps null: false
    end
  end
end
