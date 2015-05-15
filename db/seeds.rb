# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Project.create!(
    name: Faker::App.name,
    description: "#{Faker::Company.bs} from #{Faker::Company.name} #{Faker::Company.suffix}",
    funding_goal: Faker::Number.number(5),
    start_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: Faker::Date.forward(23),
    photo: Faker::Avatar.image
    )
end
