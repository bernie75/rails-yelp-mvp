class RenameAdressFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :adresse, :address
  end
end
