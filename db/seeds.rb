# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
require 'faker'

def random_date_of_birth
  Date.today-rand(100000)
end

Patient.destroy_all

30.times do Patient.create!(
    given_name:     Faker::Friends.character,
    surname:        Faker::HarryPotter.house,
    occupation:     Faker::Job.title,
    gender:         ["Male","Female","Unspecified"].sample,
    place_of_birth: Faker::Pokemon.location,
    date_of_birth:  random_date_of_birth,
    contact_number: '12345678'
  )
end
