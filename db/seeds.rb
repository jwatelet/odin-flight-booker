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

Flight.create(departure_airport: atl_airport, arrival_airport: dfw_airport, duration: 4.hours, date: Date.strptime("30-04-2024", "%d-%m-%Y"))
Flight.create(departure_airport: atl_airport, arrival_airport: den_airport, duration: 7.hours, date: Date.strptime("01-05-2024", "%d-%m-%Y"))

Flight.create(departure_airport: dfw_airport, arrival_airport: atl_airport, duration: 4.hours, date: Date.strptime("02-05-2024", "%d-%m-%Y"))
Flight.create(departure_airport: dfw_airport, arrival_airport: ord_airport, duration: 1.hours, date: Date.strptime("03-05-2024", "%d-%m-%Y"))

Flight.create(departure_airport: jfk_airport, arrival_airport: ord_airport, duration: 6.hours, date: Date.strptime("04-05-2024", "%d-%m-%Y"))
Flight.create(departure_airport: jfk_airport, arrival_airport: mia_airport, duration: 8.hours, date: Date.strptime("05-05-2024", "%d-%m-%Y"))

Flight.create(departure_airport: mia_airport, arrival_airport: atl_airport, duration: 8.hours, date: Date.strptime("06-05-2024", "%d-%m-%Y"))
Flight.create(departure_airport: mia_airport, arrival_airport: jfk_airport, duration: 2.hours, date: Date.strptime("06-05-2024", "%d-%m-%Y"))
