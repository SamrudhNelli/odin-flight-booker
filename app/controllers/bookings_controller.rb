class BookingsController < ApplicationController
  def new
    @size = params[:size].to_i > 0 ? params[:size].to_i : 1
    @@flight ||= params[:flight_id]
    @booking = Booking.new(flight_id: @@flight)
    @size.times { @booking.passengers.build }
  end
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      puts @booking
      redirect_to booking_path(@booking.id)
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @booking = Booking.find(params[:id])
  end
  private
  def booking_params
    params.require(:booking).permit(:flight_id, :confirm, passengers_attributes: [ :name, :email, :age ])
  end
end
