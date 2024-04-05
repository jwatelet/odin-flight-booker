class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passengers_num = set_passenger_num
    @flight = Flight.find(selected_flight_params[:flight_id])
    @passengers_num.times { @booking.passengers.build }
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
    if selected_flight_params[:passengers].to_i <= 4
      selected_flight_params[:passengers].to_i
    else
      1
    end
  end

  def selected_flight_params
    params.permit(:flight_id, :passengers, :commit)
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:firstname, :lastname, :email])
  end
end
