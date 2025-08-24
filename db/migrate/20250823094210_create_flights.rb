class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.string :depart_airport
      t.string :arrival_airport
      t.integer :seats
      t.datetime :departs_at
      t.datetime :arrives_at

      t.timestamps
    end
  end
end
