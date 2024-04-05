# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

atl_airport = Airport.create(code: 'ATL', name: 'Hartsfield–Jackson Atlanta International Airport')
dfw_airport = Airport.create(code: 'DFW', name: 'Dallas/Fort Worth International Airport')
den_airport = Airport.create(code: 'DEN', name: 'Denver International Airport')
ord_airport = Airport.create(code: 'ORD', name: 'O\'Hare International Airport')
jfk_airport = Airport.create(code: 'JFK', name: 'John F. Kennedy International Airport')
mia_airport = Airport.create(code: 'MIA', name: 'Miami International Airport')

airports = [atl_airport, dfw_airport, den_airport, ord_airport, jfk_airport, mia_airport]

airports.each do |departure_airport|
  airports.each do |arrival_airport|
    next unless departure_airport != arrival_airport

    5.times do
      duration = rand(20..720)
      date = (Time.now + rand(0.10)).strftime("%d-%m-%Y")
      Flight.create(departure_airport:, arrival_airport:, duration:, date:)
    end
  end
end
