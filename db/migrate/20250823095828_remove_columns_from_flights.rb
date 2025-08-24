class RemoveColumnsFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :arrival_airport, :string
    remove_column :flights, :depart_airport, :string
  end
end
