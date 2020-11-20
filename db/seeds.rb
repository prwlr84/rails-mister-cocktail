# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1000.times do
  Dose.create(
    description: Faker::Measurement.volume,
    cocktail_id: rand(1..100),
    ingredient_id: rand(1..100)
    )
end

100.times do
  Cocktail.create(
    name: Faker::Cannabis.strain
    )
end

100.times do
  Ingredient.create(
    name: Faker::Food.ingredient
    )
end
