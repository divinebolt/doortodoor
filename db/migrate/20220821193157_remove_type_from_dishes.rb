class RemoveTypeFromDishes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dishes, :type, :string
  end
end
