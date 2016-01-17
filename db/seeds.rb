# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usa = Type.find_or_create_by(
  name: "USA"
)

nacional = Type.find_or_create_by(
  name: "Nacional"
)

norte = Type.find_or_create_by(
  name: "Nacional Norte"
)

gondola1 = Gondolla.find_or_initialize_by(plate: "GNOX 1234")
gondola1.last_location = "Patio Chatarra 1"
gondola1.sort = "USA"
gondola1.save!

gondola2 = Gondolla.find_or_initialize_by(plate: "FXE 5678")
gondola2.last_location = "Patio Chatarra 2"
gondola2.sort = "Nacional"
gondola2.save!