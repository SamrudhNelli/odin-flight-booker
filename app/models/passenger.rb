class Passenger < ApplicationRecord
  validates :email, :name, :age, presence: true
  belongs_to :booking
end
