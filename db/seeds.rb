# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# let's build some cities (requires nothing)
ten_cities = [
  'Paris', 'Lyon', 'Dunkerque', 'La Rochelle',
  'Paimpol', 'Douai', 'Clermont-Ferrand', 'Die',
  'Rennes', 'Strasbourg']

ten_cities.each do |city|
  City.create(name: 'city')
end

# let's create some patients (requires cities)
20.times do
  name = Faker::FunnyName.unique.two_word_name.split(' ')
  Patient.create(first_name: name[0], last_name: name[1], city_id: rand(1..10))
end

# and now the doctors (requires cities)
20.times do
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.unique.last_name,
    city_id: rand(1..10), zip_code: rand(2000..5000).to_s)
end

# here come the appointments (requires cities, patients, doctors)
30.times do
  Appointment.create(doctor_id: rand(1..20), patient_id: rand(1..20), city_id: rand(1..10), date: Faker::Time.backward(days: 1500))
end

# let's create some specialties (requires nothing)
four_specialties = [ 
  'urology', 'oncology', 'psychiatry', 'proctology'
]

four_specialties.each do |specialty|
  Specialty.create(name: specialty)
end

# and now the specialists table (requires doctors, specialties)
40.times do
    Specialist.create(doctor_id: rand(1..20), specialty_id: rand(1..4))
  end
