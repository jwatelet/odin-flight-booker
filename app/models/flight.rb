class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def date_formatted
    date.strftime("%d/%m/%Y")
  end
end