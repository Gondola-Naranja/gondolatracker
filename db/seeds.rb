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

privada = Type.find_or_create_by(
  name: "Privada"
)

norte = Type.find_or_create_by(
  name: "Nacional Norte"
)

gondola1 = Gondolla.find_or_initialize_by(plate: "GNOX 1234")
gondola1.last_location = "Patio Chatarra 1"
gondola1.sort = usa.name
gondola1.save!

gondola2 = Gondolla.find_or_initialize_by(plate: "FXE 5678")
gondola2.last_location = "Patio Chatarra 2"
gondola2.sort = nacional.name
gondola2.save!

gondola3 = Gondolla.find_or_initialize_by(plate: "CITX 002")
gondola3.last_location = "Patio Chatarra 1"
gondola3.sort = privada.name
gondola3.save!

gondola4 = Gondolla.find_or_initialize_by(plate: "KCSM 024")
gondola4.last_location = "Patio Chatarra 2"
gondola4.sort = norte.name
gondola4.save!

gondola5 = Gondolla.find_or_initialize_by(plate: "DEAX 102")
gondola5.last_location = "Patio Chatarra 1"
gondola5.sort = privada.name
gondola5.created_at = 25.days.ago
gondola5.save!