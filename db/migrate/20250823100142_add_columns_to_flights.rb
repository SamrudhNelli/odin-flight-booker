class AddColumnsToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :arrival_airport, :string
    add_column :flights, :depart_airport, :string
  end
end
