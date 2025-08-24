class AddBookToPassenger < ActiveRecord::Migration[8.0]
  def change
    add_reference :passengers, :booking, null: true, foreign_key: true
  end
end
