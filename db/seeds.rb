# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Winery.destroy_all

# 2. Create the instances 🏗️
puts "Creating wineries..."
Winery.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", hours: "7.00-21.00",
description: "long tradition, excellent wines", services: "dinners & weddings", phone: "123456789", awars: "5 times winner of X",
email: "dishoom@gmail.com")
puts "Created Dishoom"
Winery.create!(name: "Wine East", address: "56A Shoreditch High St, London E1 6PQ", hours: "7.00-21.00",
  description: "family business", services: "tours", phone: "123456789", awars: "local taste fair winner",
  email: "wineeast@gmail.com")
puts "Created Wine East"

# 3. Display a message 🎉
puts "Finished! Created #{Winery.count} wineries."
