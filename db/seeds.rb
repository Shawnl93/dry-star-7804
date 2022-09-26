# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@hospital_1 = Hospital.create!(name: "Lee Hospital")
@shawn = @hospital_1.doctors.create!(name: "Shawn", specialty: "Heart", university: "Turing" )
@johndoe = Patient.create!(name: "John Doe", age: 99)
@janedoe = Patient.create!(name: "Jane Doe", age: 98)

Drpatient.create!(doctor: @shawn, patient: @johndoe)
Drpatient.create!(doctor: @shawn, patient: @janedoe)
