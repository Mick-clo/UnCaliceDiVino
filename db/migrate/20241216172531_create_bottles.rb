class CreateBottles < ActiveRecord::Migration[7.1]
  def change
    create_table :bottles do |t|
      t.references :winery, null: false, foreign_key: true
      t.string :name
      t.text :notes
      t.text :pairings
      t.text :stores
      t.integer :year
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
