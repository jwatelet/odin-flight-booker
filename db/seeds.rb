# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.create(code: 'ATL', name: 'Hartsfield–Jackson Atlanta International Airport')
Airport.create(code: 'DFW', name: 'Dallas/Fort Worth International Airport')
Airport.create(code: 'DEN', name: 'Denver International Airport')
Airport.create(code: 'ORD', name: 'O\'Hare International Airport')
Airport.create(code: 'JFK', name: 'John F. Kennedy International Airport')
Airport.create(code: 'MIA', name: 'Miami International Airport')
