class DeleteDepartAirportFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :depart_airport, :string
  end
end
