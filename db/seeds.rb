# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LuxuryCoffee.destroy_all

LuxuryCoffee.create({
    name: "Robusta",
    description: "A robust mix of African and Caribbean cofees.",
    intensity: 4,
    price: 2.4,
    image: "robusta.jpg"
})

LuxuryCoffee.create({
    name: "Lungo Speciale",
    description: "Powerful and fruity mix of freshly, hand picked beans.",
    intensity: 3,
    price: 2.25,
    image: "lungo.jpg"
})
