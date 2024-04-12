class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passengers_num = set_passenger_num
    puts "passengers_num #{@passengers_num}"
    @flight = Flight.find(selected_flight_params[:flight_id])
    @passengers_num.times { @booking.passengers.new }
  end

  def show
    @booking = Booking.includes(:passengers, flight: [:arrival_airport, :departure_airport])
                      .find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      @flight = Flight.find(booking_params[:flight_id])
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_passenger_num
    num = selected_flight_params[:passengers].to_i
    puts "num: #{num}"
    if num < 1 || num.nil?
      1
    elsif num <= 4
      num
    elsif num > 4
      4
    end
  end

  def selected_flight_params
    params.permit(:flight_id, :passengers, :commit)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:firstname, :lastname, :email])
  end
end
