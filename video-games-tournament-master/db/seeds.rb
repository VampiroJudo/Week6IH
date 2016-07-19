# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



tournamentA = Tournament.create(name: "Wimbledon")
tournamentB = Tournament.create(name: "French Open")
tournamentC = Tournament.create(name: "US Open")
tournamentD = Tournament.create(name: "Australian Open")


playerA = Player.create(name: "John McCanroe")
playerB = Player.create(name: "Jimmy Conners")
playerC = Player.create(name: "Martina Hingus")
playerD = Player.create(name: "Pete Sampras")