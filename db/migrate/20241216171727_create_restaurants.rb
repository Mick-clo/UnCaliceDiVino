class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.float :hours
      t.text :description
      t.text :services
      t.integer :phone

      t.timestamps
    end
  end
end
