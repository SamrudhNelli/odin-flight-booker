class AddColumnsToPasseneger < ActiveRecord::Migration[8.0]
  def change
    add_column :passengers, :name, :string
    add_column :passengers, :email, :string
    add_column :passengers, :age, :integer
  end
end
