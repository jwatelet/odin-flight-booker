class FlightsController < ApplicationController
  def index
    @flights = set_flights
    @passengers = set_passengers
    @dates_options = Flight.all.order(:date).map { |flight| [flight.date_formatted, flight.date] }.uniq
    @airport_options = Airport.pluck(:name, :id)
  end

  private

  def set_passengers
    if search?
      search_params[:passengers]
    else
      1
    end
  end

  def set_flights
    if search?
      Flight.all.includes(:arrival_airport, :departure_airport)
            .where(
              arrival_airport_id: search_params[:arrival_airport_id],
              departure_airport_id: search_params[:departure_airport_id]
            )
            .where(date: search_params[:date])
    else
      []
    end
  end

  def search?
    !search_params.empty?
  end

  def search_params
    params.permit(:departure_airport_id, :arrival_airport_id, :date, :passengers, :commit)
  end
end
