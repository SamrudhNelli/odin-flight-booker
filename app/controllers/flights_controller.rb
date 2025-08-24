class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @display = 0
    if params[:depart_airport_id].present? && params[:arrival_airport_id].present?
      year  = params["[departs_at(1i)]"].to_i
      month = params["[departs_at(2i)]"].to_i
      day   = params["[departs_at(3i)]"].to_i
      date  = Date.new(year, month, day)
      @flights = Flight.where(depart_airport_id: params[:depart_airport_id], arrival_airport_id: params[:arrival_airport_id], departs_at: date.beginning_of_day..date.end_of_day)
      @display = 1
      unless @flights.any?
        @flights = Flight.where(depart_airport_id: params[:depart_airport_id], arrival_airport_id: params[:arrival_airport_id])
        @display = -1
      end
    elsif params[:depart_airport_id].present?
      @flights = Flight.where(depart_airport_id: params[:depart_airport_id])
      @display = -1
    elsif params[:arrival_airport_id].present?
      @flights = Flight.where(arrival_airport_id: params[:arrival_airport_id])
      @display = -1
    end
  end
end
