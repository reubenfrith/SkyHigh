class CreateAircrafts < ActiveRecord::Migration[7.0]
  def change
    create_table :aircrafts do |t|
      t.string :aircraft_type
      t.string :title
      t.string :description
      t.integer :price_per_day
      t.integer :max_occupants
      t.references :user, null: false, foreign_key: true
      t.string :departure_address
      t.string :arrival_address

      t.timestamps
    end
  end
end
