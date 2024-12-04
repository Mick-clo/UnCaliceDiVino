class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :contacts
      t.string :description
      t.string :services_and_events

      t.timestamps
    end
  end
end
