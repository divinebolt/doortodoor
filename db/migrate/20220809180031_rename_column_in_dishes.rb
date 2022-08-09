class RenameColumnInDishes < ActiveRecord::Migration[6.1]
  def change
    rename_column :dishes, :descrition, :description
  end
end
