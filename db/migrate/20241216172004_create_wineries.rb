class CreateWineries < ActiveRecord::Migration[7.1]
  def change
    create_table :wineries do |t|
      t.string :name
      t.text :address
      t.float :hours
      t.text :description
      t.text :services
      t.integer :phone
      t.string :awars
      t.string :email

      t.timestamps
    end
  end
end
