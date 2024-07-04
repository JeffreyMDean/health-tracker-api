# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
workout = Workout.new(user_id: 3, date: "2024-07-01", workout_type: "Resistance Training", duration: "30 minutes")
workout.save

workout = Workout.new(user_id: 2, date: "2024-07-02", workout_type: "Running", duration: "40 minutes")
workout.save