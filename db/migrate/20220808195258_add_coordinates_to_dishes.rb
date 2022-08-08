class AddCoordinatesToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :latitude, :float
    add_column :dishes, :longitude, :float
  end
end
