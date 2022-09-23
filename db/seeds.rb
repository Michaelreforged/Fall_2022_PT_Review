# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require_relative 'fakedata'

for i in 1..4 do
m = Marathon.create(name:"Fake Marathon #{i}", distance:rand(0..8))
Participant.create(name:Fakedata.name_sample, age:Fakedata.age_sample, marathon: m )
Participant.create(name:Fakedata.name_sample, age:Fakedata.age_sample, marathon: m )
Participant.create(name:Fakedata.name_sample, age:Fakedata.age_sample, marathon: m )
end

puts "Seeded"
puts "Marathons: #{Marathon.count}"
puts "Participants: #{Participant.count}"