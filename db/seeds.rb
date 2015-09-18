# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# 50.times do 
# 	Player.create({name:Faker::Name.name,position:Faker::Lorem.word,r_r_team:Faker::Address.city})
# end

Player.create([{name: "Andrew Bailey",position: "RP",r_team: "New York Yankees"},
{name: "Dellin Betances",position: "RP",r_team: "New York Yankees"},
{name: "Chris Capuano",position: "RP",r_team: "New York Yankees"},
{name: "Caleb Cotham",position: "RP",r_team: "New York Yankees"},
{name: "Nathan Eovaldi",position: "SP",r_team: "New York Yankees"},
{name: "Nick Goody",position: "RP",r_team: "New York Yankees"},
{name: "Chris Martin",position: "RP",r_team: "New York Yankees"},
{name: "Andrew Miller",position: "RP",r_team: "New York Yankees"},
{name: "Bryan Mitchell",position: "RP",r_team: "New York Yankees"},
{name: "Ivan Nova",position: "SP",r_team: "New York Yankees"},
{name: "James Pazos",position: "RP",r_team: "New York Yankees"},
{name: "Branden Pinder",position: "RP",r_team: "New York Yankees"},
{name: "Michael Pineda",position: "SP",r_team: "New York Yankees"},
{name: "Nick Rumbelow",position: "RP",r_team: "New York Yankees"},
{name: "CC Sabathia",position: "SP",r_team: "New York Yankees"},
{name: "Luis Severino",position: "SP",r_team: "New York Yankees"},
{name: "Chasen Shreve",position: "RP",r_team: "New York Yankees"},
{name: "Masahiro Tanaka",position: "SP",r_team: "New York Yankees"},
{name: "Adam Warren",position: "RP",r_team: "New York Yankees"},
{name: "Justin Wilson",position: "RP",r_team: "New York Yankees"},
{name: "Brian McCann",position: "C",r_team: "New York Yankees"},
{name: "John Ryan Murphy",position: "C",r_team: "New York Yankees"},
{name: "Austin Romine",position: "C",r_team: "New York Yankees"},
{name: "Gary Sanchez",position: "C",r_team: "New York Yankees"},
{name: "Greg Bird",position: "1B",r_team: "New York Yankees"},
{name: "Stephen Drew",position: "2B",r_team: "New York Yankees"},
{name: "Didi Gregorius",position: "SS",r_team: "New York Yankees"},
{name: "Chase Headley",position: "3B",r_team: "New York Yankees"},
{name: "Jose Pirela",position: "2B",r_team: "New York Yankees"},
{name: "Robert Refsnyder",position: "2B",r_team: "New York Yankees"},
{name: "Brendan Ryan",position: "2B",r_team: "New York Yankees"},
{name: "Dustin Ackley",position: "LF",r_team: "New York Yankees"},
{name: "Carlos Beltran",position: "RF",r_team: "New York Yankees"},
{name: "Jacoby Ellsbury",position: "CF",r_team: "New York Yankees"},
{name: "Brett Gardner",position: "LF",r_team: "New York Yankees"},
{name: "Slade Heathcott",position: "CF",r_team: "New York Yankees"},
{name: "Rico Noel",position: "CF",r_team: "New York Yankees"},
{name: "Chris Young",position: "RF",r_team: "New York Yankees"}])