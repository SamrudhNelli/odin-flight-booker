class ChangeColumnsOfFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :arrival_airport, :string
    remove_column :flights, :arrival_airport, :string
    add_reference :flights, :arrival_airport, foreign_key: { to_table: :airports }
    add_reference :flights, :depart_airport, foreign_key: { to_table: :airports }
  end
end
