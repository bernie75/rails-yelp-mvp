class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adresse
      t.string :phone_number
      t.string :category
      t.text :review

      t.timestamps
    end
  end
end
