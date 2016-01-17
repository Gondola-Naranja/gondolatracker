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
gondola1.created_at = 30.days.ago
gondola1.save!

gondola2 = Gondolla.find_or_initialize_by(plate: "FXE 5678")
gondola2.last_location = "Patio Chatarra 2"
gondola2.created_at = 15.days.ago
gondola2.save!

gondola3 = Gondolla.find_or_initialize_by(plate: "CITX 002")
gondola3.last_location = "Patio Chatarra 1"
gondola3.save!

gondola4 = Gondolla.find_or_initialize_by(plate: "KCSM 024")
gondola4.last_location = "Patio Chatarra 2"
gondola4.save!

gondola5 = Gondolla.find_or_initialize_by(plate: "DEAX 102")
gondola5.last_location = "Patio Chatarra 1"
gondola5.save!

beacon1 = Beacon.find_or_initialize_by(uuid: "Alpha")
beacon1.distance = "10m"
beacon1.rssi = "-45"
beacon1.power = "-12"
beacon1.save!

beacon2 = Beacon.find_or_initialize_by(uuid: "Beta")
beacon2.distance = "10m"
beacon2.rssi = "-39"
beacon2.power = "-12"
beacon2.save!

beacon3 = Beacon.find_or_initialize_by(uuid: "Delta")
beacon3.distance = "10m"
beacon3.rssi = "-21"
beacon3.power = "-12"
beacon3.save!

beacon4 = Beacon.find_or_initialize_by(uuid: "Gamma")
beacon4.distance = "10m"
beacon4.rssi = "-84"
beacon4.power = "-12"
beacon4.save!

beacon5 = Beacon.find_or_initialize_by(uuid: "Phi")
beacon5.distance = "10m"
beacon5.rssi = "-66"
beacon5.power = "-12"
beacon5.save!

beacon6 = Beacon.find_or_initialize_by(uuid: "Zeta")
beacon6.distance = "10m"
beacon6.rssi = "-66"
beacon6.power = "-12"
beacon6.save!
