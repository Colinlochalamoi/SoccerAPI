# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  Team.create!([{ name: Faker::Sports::Football.team, city: Faker::Nation.capital_city,
                  color_1: Faker::Color.color_name, color_2: Faker::Color.color_name, league: Faker::Sports::Football.competition, nationality: Faker::Nation.nationality }])
end

25.times do
  @foot = if rand(1..2) == 1
            'Right'
          else
            'Left'
          end

  Player.create!([{ first_name: Faker::Sports::Football.player, last_name: Faker::Name.last_name, number: rand(0..35),
                    position: Faker::Sports::Football.position, hieght: rand(152..185), dominant_foot: @foot, age: rand(18..35), nationality: Faker::Nation.nationality, Team_id: rand(1..50) }])
end
