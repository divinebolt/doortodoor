class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.text :descrition
      t.float :quantity
      t.string :address
      t.string :type
      t.integer :rating

      t.timestamps
    end
  end
end
